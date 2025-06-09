// side: client

package client

import net.minecraft.util.text.translation.I18n

/** Localize translation key */
static String localize(String key) {

    return I18n.translateToLocal(key)
}