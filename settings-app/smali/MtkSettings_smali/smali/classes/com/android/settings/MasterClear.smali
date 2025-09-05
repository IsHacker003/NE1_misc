.class public Lcom/android/settings/MasterClear;
.super Lcom/android/settings/core/InstrumentedFragment;
.source "MasterClear.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# static fields
.field static final CREDENTIAL_CONFIRM_REQUEST:I = 0x38

.field static final KEYGUARD_REQUEST:I = 0x37


# instance fields
.field private mContentView:Landroid/view/View;

.field mEsimStorage:Landroid/widget/CheckBox;

.field private mEsimStorageContainer:Landroid/view/View;

.field mExternalStorage:Landroid/widget/CheckBox;

.field private mExternalStorageContainer:Landroid/view/View;

.field mInitiateButton:Landroid/widget/Button;

.field protected final mInitiateListener:Landroid/view/View$OnClickListener;

.field mScrollView:Landroid/widget/ScrollView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 77
    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedFragment;-><init>()V

    .line 217
    new-instance v0, Lcom/android/settings/MasterClear$1;

    invoke-direct {v0, p0}, Lcom/android/settings/MasterClear$1;-><init>(Lcom/android/settings/MasterClear;)V

    iput-object v0, p0, Lcom/android/settings/MasterClear;->mInitiateListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/MasterClear;I)Z
    .locals 0

    .line 77
    invoke-direct {p0, p1}, Lcom/android/settings/MasterClear;->runKeyguardConfirmation(I)Z

    move-result p0

    return p0
.end method

.method private getContentDescription(Landroid/view/View;Ljava/lang/StringBuffer;)V
    .locals 2

    .line 390
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 391
    return-void

    .line 393
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 394
    check-cast p1, Landroid/view/ViewGroup;

    .line 395
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 396
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 397
    invoke-direct {p0, v1, p2}, Lcom/android/settings/MasterClear;->getContentDescription(Landroid/view/View;Ljava/lang/StringBuffer;)V

    .line 395
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 399
    :cond_1
    goto :goto_1

    :cond_2
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 400
    check-cast p1, Landroid/widget/TextView;

    .line 401
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    .line 402
    const-string p1, ","

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 404
    :cond_3
    :goto_1
    return-void
.end method

.method private isExtStorageEncrypted()Z
    .locals 2

    .line 407
    const-string v0, "vold.decrypt"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 408
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static synthetic lambda$onCreateView$0(Lcom/android/settings/MasterClear;Landroid/content/DialogInterface;)V
    .locals 0

    .line 511
    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private loadAccountList(Landroid/os/UserManager;)V
    .locals 24

    move-object/from16 v1, p0

    .line 412
    iget-object v0, v1, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    const v2, 0x7f0a000c    # @id/accounts_label

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 413
    iget-object v0, v1, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    const v3, 0x7f0a000b    # @id/accounts

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/widget/LinearLayout;

    .line 414
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 416
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v4

    .line 417
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    move-object/from16 v5, p1

    invoke-virtual {v5, v0}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v6

    .line 418
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    .line 420
    invoke-static {v4}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v8

    .line 422
    const-string v0, "layout_inflater"

    invoke-virtual {v4, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/view/LayoutInflater;

    .line 425
    nop

    .line 426
    const/4 v0, 0x0

    const/4 v11, 0x0

    :goto_0
    if-ge v11, v7, :cond_9

    .line 427
    invoke-interface {v6, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/pm/UserInfo;

    .line 428
    iget v14, v13, Landroid/content/pm/UserInfo;->id:I

    .line 429
    new-instance v15, Landroid/os/UserHandle;

    invoke-direct {v15, v14}, Landroid/os/UserHandle;-><init>(I)V

    .line 430
    invoke-virtual {v8, v14}, Landroid/accounts/AccountManager;->getAccountsAsUser(I)[Landroid/accounts/Account;

    move-result-object v10

    .line 431
    array-length v12, v10

    .line 432
    if-nez v12, :cond_0

    .line 433
    nop

    .line 426
    move-object/from16 v18, v6

    move-object/from16 v19, v8

    goto/16 :goto_a

    .line 435
    :cond_0
    add-int v17, v0, v12

    .line 437
    invoke-static {v4}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 438
    invoke-virtual {v0, v14}, Landroid/accounts/AccountManager;->getAuthenticatorTypesAsUser(I)[Landroid/accounts/AuthenticatorDescription;

    move-result-object v14

    .line 439
    move-object/from16 v18, v6

    array-length v6, v14

    .line 441
    move-object/from16 v19, v8

    const v8, 0x1020016    # @android:id/title

    const/4 v0, 0x1

    if-le v7, v0, :cond_2

    .line 442
    invoke-static {v9, v3}, Lcom/android/settings/Utils;->inflateCategoryHeader(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 443
    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    move-object/from16 v8, v16

    check-cast v8, Landroid/widget/TextView;

    .line 444
    invoke-virtual {v13}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v13

    if-eqz v13, :cond_1

    const v13, 0x7f12038d    # @string/category_work 'Work'

    goto :goto_1

    .line 445
    :cond_1
    const v13, 0x7f12038c    # @string/category_personal 'Personal'

    .line 444
    :goto_1
    invoke-virtual {v8, v13}, Landroid/widget/TextView;->setText(I)V

    .line 446
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 449
    :cond_2
    const/4 v8, 0x0

    :goto_2
    if-ge v8, v12, :cond_8

    .line 450
    aget-object v13, v10, v8

    .line 451
    nop

    .line 452
    const/4 v0, 0x0

    :goto_3
    const/16 v16, 0x0

    if-ge v0, v6, :cond_4

    .line 453
    move/from16 v20, v6

    iget-object v6, v13, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v21, v10

    aget-object v10, v14, v0

    iget-object v10, v10, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 454
    aget-object v0, v14, v0

    .line 455
    nop

    .line 458
    move-object v6, v0

    goto :goto_4

    .line 452
    :cond_3
    add-int/lit8 v0, v0, 0x1

    move/from16 v6, v20

    move-object/from16 v10, v21

    goto :goto_3

    .line 458
    :cond_4
    move/from16 v20, v6

    move-object/from16 v21, v10

    move-object/from16 v6, v16

    :goto_4
    if-nez v6, :cond_5

    .line 459
    const-string v0, "MasterClear"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "No descriptor for account name="

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v13, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " type="

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v13, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    nop

    .line 449
    move/from16 v22, v12

    move-object/from16 v23, v14

    const v10, 0x1020016    # @android:id/title

    goto/16 :goto_9

    .line 463
    :cond_5
    nop

    .line 465
    :try_start_0
    iget v0, v6, Landroid/accounts/AuthenticatorDescription;->iconId:I

    if-eqz v0, :cond_6

    .line 466
    iget-object v0, v6, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-virtual {v4, v0, v10, v15}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0

    .line 468
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    move/from16 v22, v12

    :try_start_1
    iget v12, v6, Landroid/accounts/AuthenticatorDescription;->iconId:I

    .line 469
    invoke-virtual {v0, v12}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 468
    invoke-virtual {v10, v0, v15}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 475
    move-object/from16 v16, v0

    goto :goto_5

    .line 473
    :catch_0
    move-exception v0

    goto :goto_6

    .line 471
    :catch_1
    move-exception v0

    goto :goto_7

    .line 475
    :cond_6
    move/from16 v22, v12

    .line 476
    :goto_5
    move-object/from16 v23, v14

    goto :goto_8

    .line 473
    :catch_2
    move-exception v0

    move/from16 v22, v12

    .line 474
    :goto_6
    const-string v10, "MasterClear"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v23, v14

    const-string v14, "Invalid icon id for account type "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v6, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v10, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8

    .line 471
    :catch_3
    move-exception v0

    move/from16 v22, v12

    :goto_7
    move-object/from16 v23, v14

    .line 472
    const-string v0, "MasterClear"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Bad package name for account type "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v6, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    nop

    .line 476
    :goto_8
    if-nez v16, :cond_7

    .line 477
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v16

    .line 480
    :cond_7
    move-object/from16 v0, v16

    const v6, 0x7f0d00bb    # @layout/master_clear_account 'res/layout/master_clear_account.xml'

    const/4 v10, 0x0

    invoke-virtual {v9, v6, v3, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 481
    const v10, 0x1020006    # @android:id/icon

    invoke-virtual {v6, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 482
    const v10, 0x1020016    # @android:id/title

    invoke-virtual {v6, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v12, v13, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 483
    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 449
    :goto_9
    add-int/lit8 v8, v8, 0x1

    move/from16 v6, v20

    move-object/from16 v10, v21

    move/from16 v12, v22

    move-object/from16 v14, v23

    goto/16 :goto_2

    .line 426
    :cond_8
    move/from16 v0, v17

    :goto_a
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v6, v18

    move-object/from16 v8, v19

    goto/16 :goto_0

    .line 487
    :cond_9
    const/4 v6, 0x1

    if-lez v0, :cond_a

    .line 488
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 489
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_b

    .line 492
    :cond_a
    const/4 v4, 0x0

    :goto_b
    iget-object v0, v1, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    const v1, 0x7f0a024b    # @id/other_users_present

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 493
    invoke-virtual/range {p1 .. p1}, Landroid/os/UserManager;->getUserCount()I

    move-result v1

    sub-int/2addr v1, v7

    if-lez v1, :cond_b

    goto :goto_c

    .line 494
    :cond_b
    move v6, v4

    :goto_c
    if-eqz v6, :cond_c

    goto :goto_d

    :cond_c
    const/16 v10, 0x8

    move v4, v10

    :goto_d
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 495
    return-void
.end method

.method private runKeyguardConfirmation(I)Z
    .locals 3

    .line 115
    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 116
    new-instance v1, Lcom/android/settings/password/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lcom/android/settings/password/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    .line 117
    const v2, 0x7f1208be    # @string/master_clear_short_title 'Erase all data (factory reset)'

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 116
    invoke-virtual {v1, p1, v0}, Lcom/android/settings/password/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method establishInitialState()V
    .locals 6

    .line 260
    iget-object v0, p0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    const v1, 0x7f0a01b4    # @id/initiate_master_clear

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/MasterClear;->mInitiateButton:Landroid/widget/Button;

    .line 261
    iget-object v0, p0, Lcom/android/settings/MasterClear;->mInitiateButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/MasterClear;->mInitiateListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 262
    iget-object v0, p0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    const v1, 0x7f0a0141    # @id/erase_external_container

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MasterClear;->mExternalStorageContainer:Landroid/view/View;

    .line 263
    iget-object v0, p0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    const v1, 0x7f0a0140    # @id/erase_external

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/settings/MasterClear;->mExternalStorage:Landroid/widget/CheckBox;

    .line 264
    iget-object v0, p0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    const v1, 0x7f0a013e    # @id/erase_esim_container

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MasterClear;->mEsimStorageContainer:Landroid/view/View;

    .line 265
    iget-object v0, p0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    const v1, 0x7f0a013d    # @id/erase_esim

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/settings/MasterClear;->mEsimStorage:Landroid/widget/CheckBox;

    .line 266
    iget-object v0, p0, Lcom/android/settings/MasterClear;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/android/settings/MasterClear;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 269
    :cond_0
    iget-object v0, p0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    const v1, 0x7f0a0205    # @id/master_clear_scrollview

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/android/settings/MasterClear;->mScrollView:Landroid/widget/ScrollView;

    .line 278
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v0

    .line 279
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    .line 280
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-direct {p0}, Lcom/android/settings/MasterClear;->isExtStorageEncrypted()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 293
    :cond_1
    iget-object v0, p0, Lcom/android/settings/MasterClear;->mExternalStorageContainer:Landroid/view/View;

    new-instance v3, Lcom/android/settings/MasterClear$2;

    invoke-direct {v3, p0}, Lcom/android/settings/MasterClear$2;-><init>(Lcom/android/settings/MasterClear;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 281
    :cond_2
    :goto_0
    iget-object v3, p0, Lcom/android/settings/MasterClear;->mExternalStorageContainer:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 283
    iget-object v3, p0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    const v5, 0x7f0a0142    # @id/erase_external_option_text

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 284
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 286
    iget-object v3, p0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    const v4, 0x7f0a0045    # @id/also_erases_external

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 287
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 291
    iget-object v3, p0, Lcom/android/settings/MasterClear;->mExternalStorage:Landroid/widget/CheckBox;

    xor-int/2addr v0, v1

    invoke-virtual {v3, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 292
    nop

    .line 302
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->showWipeEuicc()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 303
    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->showWipeEuiccCheckbox()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 304
    iget-object v0, p0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    const v1, 0x7f0a013f    # @id/erase_esim_title

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 305
    const v1, 0x7f120606    # @string/erase_esim_storage 'Erase eSIM'

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 306
    iget-object v0, p0, Lcom/android/settings/MasterClear;->mEsimStorageContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 307
    iget-object v0, p0, Lcom/android/settings/MasterClear;->mEsimStorageContainer:Landroid/view/View;

    new-instance v1, Lcom/android/settings/MasterClear$3;

    invoke-direct {v1, p0}, Lcom/android/settings/MasterClear$3;-><init>(Lcom/android/settings/MasterClear;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 313
    goto :goto_2

    .line 314
    :cond_3
    iget-object v0, p0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    const v3, 0x7f0a0044    # @id/also_erases_esim

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 315
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 317
    iget-object v0, p0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    const v3, 0x7f0a0233    # @id/no_cancel_mobile_plan

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 319
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 320
    iget-object v0, p0, Lcom/android/settings/MasterClear;->mEsimStorage:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 324
    :cond_4
    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 325
    invoke-direct {p0, v0}, Lcom/android/settings/MasterClear;->loadAccountList(Landroid/os/UserManager;)V

    .line 326
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 327
    iget-object v1, p0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    const v2, 0x7f0a0204    # @id/master_clear_container

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 328
    invoke-direct {p0, v1, v0}, Lcom/android/settings/MasterClear;->getContentDescription(Landroid/view/View;Ljava/lang/StringBuffer;)V

    .line 329
    invoke-virtual {v1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 332
    iget-object v0, p0, Lcom/android/settings/MasterClear;->mScrollView:Landroid/widget/ScrollView;

    new-instance v1, Lcom/android/settings/MasterClear$4;

    invoke-direct {v1, p0}, Lcom/android/settings/MasterClear$4;-><init>(Lcom/android/settings/MasterClear;)V

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setOnScrollChangeListener(Landroid/view/View$OnScrollChangeListener;)V

    .line 344
    iget-object v0, p0, Lcom/android/settings/MasterClear;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 345
    return-void
.end method

.method getAccountConfirmationIntent()Landroid/content/Intent;
    .locals 6

    .line 176
    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 177
    const v1, 0x7f12009f    # @string/account_type ''

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 178
    const v2, 0x7f120091    # @string/account_confirmation_package ''

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 179
    const v3, 0x7f120090    # @string/account_confirmation_class ''

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 180
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_3

    .line 181
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 182
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    .line 186
    :cond_0
    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v4

    .line 187
    invoke-virtual {v4, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v4

    .line 188
    if-eqz v4, :cond_2

    array-length v4, v4

    if-lez v4, :cond_2

    .line 189
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 190
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    new-instance v4, Landroid/content/ComponentName;

    invoke-direct {v4, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    invoke-virtual {v1, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v1

    .line 193
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 194
    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 195
    if-eqz v0, :cond_1

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v4, :cond_1

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 197
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 200
    return-object v1

    .line 202
    :cond_1
    const-string v0, "MasterClear"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to resolve Activity: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    goto :goto_0

    .line 205
    :cond_2
    const-string v0, "MasterClear"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " accounts installed!"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    :goto_0
    return-object v5

    .line 183
    :cond_3
    :goto_1
    const-string v0, "MasterClear"

    const-string v1, "Resources not set for account confirmation."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    return-object v5
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 524
    const/16 v0, 0x42

    return v0
.end method

.method hasReachedBottom(Landroid/widget/ScrollView;)Z
    .locals 4

    .line 379
    invoke-virtual {p1}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 380
    return v1

    .line 383
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 384
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    invoke-virtual {p1}, Landroid/widget/ScrollView;->getHeight()I

    move-result v3

    invoke-virtual {p1}, Landroid/widget/ScrollView;->getScrollY()I

    move-result p1

    add-int/2addr v3, p1

    sub-int/2addr v2, v3

    .line 386
    if-gtz v2, :cond_1

    move v0, v1

    nop

    :cond_1
    return v0
.end method

.method protected isEuiccEnabled(Landroid/content/Context;)Z
    .locals 1

    .line 373
    const-string v0, "euicc"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/euicc/EuiccManager;

    .line 374
    invoke-virtual {p1}, Landroid/telephony/euicc/EuiccManager;->isEnabled()Z

    move-result p1

    return p1
.end method

.method isValidRequestCode(I)Z
    .locals 1

    .line 122
    const/16 v0, 0x37

    if-eq p1, v0, :cond_1

    const/16 v0, 0x38

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 127
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/core/InstrumentedFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 128
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/settings/MasterClear;->onActivityResultInternal(IILandroid/content/Intent;)V

    .line 129
    return-void
.end method

.method onActivityResultInternal(IILandroid/content/Intent;)V
    .locals 0

    .line 136
    invoke-virtual {p0, p1}, Lcom/android/settings/MasterClear;->isValidRequestCode(I)Z

    move-result p3

    if-nez p3, :cond_0

    .line 137
    return-void

    .line 140
    :cond_0
    const/4 p3, -0x1

    if-eq p2, p3, :cond_1

    .line 141
    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->establishInitialState()V

    .line 142
    return-void

    .line 145
    :cond_1
    nop

    .line 148
    const/16 p2, 0x38

    if-eq p2, p1, :cond_2

    .line 149
    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getAccountConfirmationIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 150
    invoke-virtual {p0, p1}, Lcom/android/settings/MasterClear;->showAccountCredentialConfirmation(Landroid/content/Intent;)V

    goto :goto_0

    .line 152
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->showFinalConfirmation()V

    .line 154
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 104
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedFragment;->onCreate(Landroid/os/Bundle;)V

    .line 105
    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const v0, 0x7f1208be    # @string/master_clear_short_title 'Erase all data (factory reset)'

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setTitle(I)V

    .line 106
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 500
    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getContext()Landroid/content/Context;

    move-result-object p2

    .line 501
    const-string p3, "no_factory_reset"

    .line 502
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    .line 501
    invoke-static {p2, p3, v0}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p3

    .line 503
    invoke-static {p2}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    .line 504
    invoke-virtual {v0}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "no_factory_reset"

    .line 505
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    .line 504
    invoke-static {p2, v0, v1}, Lcom/android/settingslib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 506
    :goto_1
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-static {p2}, Lcom/android/settings/Utils;->isDemoUser(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 507
    const p2, 0x7f0d00bd    # @layout/master_clear_disallowed_screen 'res/layout/master_clear_disallowed_screen.xml'

    invoke-virtual {p1, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 508
    :cond_2
    if-eqz p3, :cond_3

    .line 509
    new-instance p1, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;

    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;-><init>(Landroid/app/Activity;)V

    const-string p2, "no_factory_reset"

    .line 510
    invoke-virtual {p1, p2, p3}, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->prepareDialogBuilder(Ljava/lang/String;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance p2, Lcom/android/settings/-$$Lambda$MasterClear$Z9cDw51Fmk6mKl61MZqDIXg0-34;

    invoke-direct {p2, p0}, Lcom/android/settings/-$$Lambda$MasterClear$Z9cDw51Fmk6mKl61MZqDIXg0-34;-><init>(Lcom/android/settings/MasterClear;)V

    .line 511
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 512
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 513
    new-instance p1, Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-object p1

    .line 516
    :cond_3
    const p2, 0x7f0d00ba    # @layout/master_clear 'res/layout/master_clear.xml'

    invoke-virtual {p1, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    .line 518
    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->establishInitialState()V

    .line 519
    iget-object p1, p0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    return-object p1
.end method

.method public onGlobalLayout()V
    .locals 2

    .line 99
    iget-object v0, p0, Lcom/android/settings/MasterClear;->mInitiateButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/MasterClear;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {p0, v1}, Lcom/android/settings/MasterClear;->hasReachedBottom(Landroid/widget/ScrollView;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 100
    return-void
.end method

.method showAccountCredentialConfirmation(Landroid/content/Intent;)V
    .locals 1

    .line 171
    const/16 v0, 0x38

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/MasterClear;->startActivityForResult(Landroid/content/Intent;I)V

    .line 172
    return-void
.end method

.method showFinalConfirmation()V
    .locals 3

    .line 158
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 159
    const-string v1, "erase_sd"

    iget-object v2, p0, Lcom/android/settings/MasterClear;->mExternalStorage:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 160
    const-string v1, "erase_esim"

    iget-object v2, p0, Lcom/android/settings/MasterClear;->mEsimStorage:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 161
    new-instance v1, Lcom/android/settings/core/SubSettingLauncher;

    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v2, Lcom/android/settings/MasterClearConfirm;

    .line 162
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    .line 163
    invoke-virtual {v1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    .line 164
    const v1, 0x7f1208b1    # @string/master_clear_confirm_title 'Reset?'

    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setTitle(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    .line 165
    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getMetricsCategory()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    .line 166
    invoke-virtual {v0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    .line 167
    return-void
.end method

.method showWipeEuicc()Z
    .locals 3

    .line 355
    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 356
    invoke-virtual {p0, v0}, Lcom/android/settings/MasterClear;->isEuiccEnabled(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 357
    return v2

    .line 359
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 360
    const-string v1, "euicc_provisioned"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "development_settings_enabled"

    .line 361
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    goto :goto_1

    :cond_2
    :goto_0
    const/4 v2, 0x1

    .line 360
    :goto_1
    return v2
.end method

.method showWipeEuiccCheckbox()Z
    .locals 2

    .line 367
    const-string v0, "masterclear.allow_retain_esim_profiles_after_fdr"

    .line 368
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 367
    return v0
.end method
