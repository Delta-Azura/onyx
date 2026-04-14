/* SPDX-FileCopyrightText: 2024 - Sébastien Wilmet
 * SPDX-License-Identifier: LGPL-3.0-or-later
 */

#ifndef TEPL_WINDOW_STATE_H
#define TEPL_WINDOW_STATE_H

#if !defined (TEPL_H_INSIDE) && !defined (TEPL_COMPILATION)
#error "Only <tepl/tepl.h> can be included directly."
#endif

#include <gtk/gtk.h>

G_BEGIN_DECLS

G_MODULE_EXPORT
void	tepl_window_state_init	(GtkWindow *window,
				 GSettings *settings,
				 GType      window_type);

G_END_DECLS

#endif /* TEPL_WINDOW_STATE_H */
