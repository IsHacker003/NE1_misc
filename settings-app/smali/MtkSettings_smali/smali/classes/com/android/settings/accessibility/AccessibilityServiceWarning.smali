.class public Lcom/android/settings/accessibility/AccessibilityServiceWarning;
.super Ljava/lang/Object;
.source "AccessibilityServiceWarning.java"


# direct methods
.method public static createCapabilitiesDialog(Landroid/app/Activity;Landroid/accessibilityservice/AccessibilityServiceInfo;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;
    .locals 5

    .line 51
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    .line 53
    invoke-static {p0, p1}, Lcom/android/settings/accessibility/AccessibilityServiceWarning;->getServiceName(Landroid/content/Context;Landroid/accessibilityservice/AccessibilityServiceInfo;)Ljava/lang/CharSequence;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 52
    const v3, 0x7f1205c8    # @string/enable_service_title 'Use %1$s?'

    invoke-virtual {p0, v3, v2}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 54
    invoke-static {p0, p1}, Lcom/android/settings/accessibility/AccessibilityServiceWarning;->createEnableDialogContentView(Landroid/content/Context;Landroid/accessibilityservice/AccessibilityServiceInfo;)Landroid/view/View;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 55
    const p1, 0x104000a    # @android:string/ok

    invoke-virtual {p0, p1, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 56
    const/high16 p1, 0x1040000    # @android:string/cancel

    invoke-virtual {p0, p1, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 57
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    .line 59
    sget-object p1, Lcom/android/settings/accessibility/-$$Lambda$AccessibilityServiceWarning$D3xqJyTKInilYjQAxG1fpVU1D1M;->INSTANCE:Lcom/android/settings/accessibility/-$$Lambda$AccessibilityServiceWarning$D3xqJyTKInilYjQAxG1fpVU1D1M;

    .line 72
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    .line 73
    invoke-virtual {p2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 74
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v3, 0x80000

    or-int/2addr v2, v3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 75
    invoke-virtual {p2, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 76
    invoke-virtual {p0}, Landroid/app/AlertDialog;->create()V

    .line 77
    const/4 p2, -0x1

    invoke-virtual {p0, p2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 78
    invoke-virtual {p0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 80
    return-object p0
.end method

.method private static createEnableDialogContentView(Landroid/content/Context;Landroid/accessibilityservice/AccessibilityServiceInfo;)Landroid/view/View;
    .locals 17

    move-object/from16 v0, p0

    .line 102
    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 105
    const/4 v2, 0x0

    const v3, 0x7f0d008e    # @layout/enable_accessibility_service_dialog_content 'res/layout/enable_accessibility_service_dialog_content.xml'

    invoke-virtual {v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 108
    const v4, 0x7f0a0133    # @id/encryption_warning

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 110
    invoke-static {}, Lcom/android/settings/accessibility/AccessibilityServiceWarning;->isFullDiskEncrypted()Z

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v5, :cond_0

    .line 111
    const v5, 0x7f1205c4    # @string/enable_service_encryption_warning 'If you turn on %1$s, your device won’t use your screen lock to enhance data encryption.'

    new-array v8, v6, [Ljava/lang/Object;

    .line 112
    invoke-static/range {p0 .. p1}, Lcom/android/settings/accessibility/AccessibilityServiceWarning;->getServiceName(Landroid/content/Context;Landroid/accessibilityservice/AccessibilityServiceInfo;)Ljava/lang/CharSequence;

    move-result-object v9

    aput-object v9, v8, v7

    .line 111
    invoke-virtual {v0, v5, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 113
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 115
    goto :goto_0

    .line 116
    :cond_0
    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 119
    :goto_0
    const v4, 0x7f0a00a0    # @id/capabilities_header

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 121
    const v5, 0x7f120364    # @string/capabilities_list_title '%1$s needs to:'

    new-array v6, v6, [Ljava/lang/Object;

    .line 122
    invoke-static/range {p0 .. p1}, Lcom/android/settings/accessibility/AccessibilityServiceWarning;->getServiceName(Landroid/content/Context;Landroid/accessibilityservice/AccessibilityServiceInfo;)Ljava/lang/CharSequence;

    move-result-object v8

    aput-object v8, v6, v7

    .line 121
    invoke-virtual {v0, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    const v4, 0x7f0a009f    # @id/capabilities

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 127
    const v5, 0x1090039    # @android:layout/app_permission_item_old

    invoke-virtual {v1, v5, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 130
    const v8, 0x102036e    # @android:id/perm_icon

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    .line 132
    const v10, 0x10804ed    # @android:drawable/ic_usb_48dp

    invoke-virtual {v0, v10}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 135
    const v9, 0x1020372    # @android:id/permission_group

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 137
    const v12, 0x7f120366    # @string/capability_title_receiveAccessibilityEvents 'Observe your actions'

    invoke-virtual {v0, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    const v11, 0x1020374    # @android:id/permission_list

    invoke-virtual {v6, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 142
    const v13, 0x7f120365    # @string/capability_desc_receiveAccessibilityEvents 'Receive notifications when you’re interacting with an app.'

    .line 143
    invoke-virtual {v0, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 142
    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    nop

    .line 146
    move-object/from16 v12, p1

    invoke-virtual {v12, v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getCapabilityInfos(Landroid/content/Context;)Ljava/util/List;

    move-result-object v12

    .line 148
    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 151
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v6

    .line 152
    :goto_1
    if-ge v7, v6, :cond_1

    .line 153
    invoke-interface {v12, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/accessibilityservice/AccessibilityServiceInfo$CapabilityInfo;

    .line 155
    invoke-virtual {v1, v5, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v14

    .line 158
    invoke-virtual {v14, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/ImageView;

    .line 160
    invoke-virtual {v0, v10}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v15, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 163
    invoke-virtual {v14, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 165
    iget v15, v13, Landroid/accessibilityservice/AccessibilityServiceInfo$CapabilityInfo;->titleResId:I

    invoke-virtual {v0, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    invoke-virtual {v14, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 169
    iget v13, v13, Landroid/accessibilityservice/AccessibilityServiceInfo$CapabilityInfo;->descResId:I

    invoke-virtual {v0, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    invoke-virtual {v4, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 152
    add-int/lit8 v7, v7, 0x1

    const/4 v2, 0x0

    goto :goto_1

    .line 174
    :cond_1
    return-object v3
.end method

.method private static getServiceName(Landroid/content/Context;Landroid/accessibilityservice/AccessibilityServiceInfo;)Ljava/lang/CharSequence;
    .locals 2

    .line 179
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    .line 180
    nop

    .line 181
    invoke-virtual {p1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object p1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p0

    .line 182
    invoke-static {v0}, Landroid/text/BidiFormatter;->getInstance(Ljava/util/Locale;)Landroid/text/BidiFormatter;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method private static isFullDiskEncrypted()Z
    .locals 1

    .line 90
    invoke-static {}, Landroid/os/storage/StorageManager;->isNonDefaultBlockEncrypted()Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$createCapabilitiesDialog$0(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 61
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getFlags()I

    move-result v0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 62
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    goto :goto_0

    .line 69
    :cond_0
    return v2

    .line 63
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v1, :cond_2

    .line 64
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const p1, 0x7f120dfd    # @string/touch_filtered_warning 'Because an app is obscuring a permission request, Settings can’t verify your response.'

    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    .line 65
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 67
    :cond_2
    return v1
.end method
