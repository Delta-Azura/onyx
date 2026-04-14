/* SPDX-FileCopyrightText: 2024 - Sébastien Wilmet
 * SPDX-License-Identifier: LGPL-3.0-or-later
 */

#ifndef TEPL_SETTINGS_BINDING_GROUP_H
#define TEPL_SETTINGS_BINDING_GROUP_H

#if !defined (TEPL_H_INSIDE) && !defined (TEPL_COMPILATION)
#error "Only <tepl/tepl.h> can be included directly."
#endif

#include <glib-object.h>
#include <gmodule.h>

G_BEGIN_DECLS

typedef struct _TeplSettingsBindingGroup TeplSettingsBindingGroup;

G_MODULE_EXPORT
TeplSettingsBindingGroup *	tepl_settings_binding_group_new		(void);

G_MODULE_EXPORT
void				tepl_settings_binding_group_free	(TeplSettingsBindingGroup *group);

G_MODULE_EXPORT
void				tepl_settings_binding_group_add		(TeplSettingsBindingGroup *group,
									 const gchar              *property_name);

G_MODULE_EXPORT
void				tepl_settings_binding_group_unbind	(TeplSettingsBindingGroup *group,
									 GObject                  *object);

G_END_DECLS

#endif /* TEPL_SETTINGS_BINDING_GROUP_H */
