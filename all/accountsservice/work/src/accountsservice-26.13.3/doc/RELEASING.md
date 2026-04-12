# Making an Accounts Service Release

Accounts Service *currently* uses automatically generated versions numbers derived from the commit metadata of the last git commit. This happens automatically during configuration, when meson runs the [`generate-version.sh`][./generate-version.sh] file. As such, you don't need to do any version bumps.

To tag a release the procedure is as follows:

* Make sure your checkout is up to date

```bash
git pull upstream main
```

* Generate the changelog

```bash
git shortlog --no-merges $(git describe --abbrev=0).. > changelog.txt
```

* Generate the version

```bash
bash ./generate-version.sh
25.34.76
```

* Generate the tarball

```bash
meson dist -C _builddir/
```

* Tag and add the changelog as commit message

```bash
git tag -a "25.34.76" -s -F ./changelog.txt
git push --atomic upstream 25.34.76
```

* Create a ["Release"](https://gitlab.freedesktop.org/accountsservice/accountsservice/-/releases/new) on GitLab

* Attach the generated dist tarball and 256shasum in the Release
* TODO: Upload the dist tarball to <https://www.freedesktop.org/software/accountsservice/> if you have access
