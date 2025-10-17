# SPDX-FileCopyrightText: 2021 Paul Dersey <pdersey@gmail.com>
# SPDX-FileCopyrightText: 2022 Samuel Tyler <samuel@samuelt.me>
# SPDX-FileCopyrightText: 2022 Andrius Štikonas <andrius@stikonas.eu>
#
# SPDX-License-Identifier: GPL-3.0-or-later

src_prepare() {
    :
}

src_compile() {
   make "${MAKEJOBS}" CC=tcc AR="tcc -ar" bzip2
}

src_install() {
    install -D bzip2 "${DESTDIR}${PREFIX}/bin/bzip2"
    ln -sf "${PREFIX}/bin/bzip2" "${DESTDIR}${PREFIX}/bin/bunzip2"
    ln -sf "${PREFIX}/bin/bzip2" "${DESTDIR}${PREFIX}/bin/bzcat"
}
