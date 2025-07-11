#!/bin/bash

# -------------------------------
# HACK4U - Installer Script
# Author: Mohamed Benazza
# -------------------------------

echo "🔧 جاري تثبيت HACK4U..."

# إنشاء مجلد bin إذا ماكانش
mkdir -p $HOME/.hack4u

# نسخ السكريبتات
cp -r src/* $HOME/.hack4u/

# إنشاء alias باش تقدر تستدعي الأداة من أي مكان
if ! grep -q "alias hack4u=" $HOME/.bashrc; then
    echo "alias hack4u='bash \$HOME/.hack4u/core.sh'" >> $HOME/.bashrc
    echo "✅ تم إنشاء alias باسم 'hack4u'"
    source $HOME/.bashrc
fi

echo "✅ تم تثبيت HACK4U بنجاح!"
echo "🧠 استعمل الأمر: hack4u"
