.class public Lcom/android/settings/users/EditUserInfoController;
.super Ljava/lang/Object;
.source "EditUserInfoController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/users/EditUserInfoController$OnContentChangedCallback;
    }
.end annotation


# instance fields
.field private mEditUserInfoDialog:Landroid/app/Dialog;

.field private mEditUserPhotoController:Lcom/android/settings/users/EditUserPhotoController;

.field private mSavedPhoto:Landroid/graphics/Bitmap;

.field private mUser:Landroid/os/UserHandle;

.field private mUserManager:Landroid/os/UserManager;

.field private mWaitingForActivityResult:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/users/EditUserInfoController;->mWaitingForActivityResult:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/users/EditUserInfoController;)Landroid/os/UserHandle;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/android/settings/users/EditUserInfoController;->mUser:Landroid/os/UserHandle;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settings/users/EditUserInfoController;)Landroid/os/UserManager;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/android/settings/users/EditUserInfoController;->mUserManager:Landroid/os/UserManager;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/settings/users/EditUserInfoController;)Lcom/android/settings/users/EditUserPhotoController;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/android/settings/users/EditUserInfoController;->mEditUserPhotoController:Lcom/android/settings/users/EditUserPhotoController;

    return-object p0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/android/settings/users/EditUserInfoController;->mEditUserPhotoController:Lcom/android/settings/users/EditUserPhotoController;

    invoke-virtual {v0}, Lcom/android/settings/users/EditUserPhotoController;->removeNewUserPhotoBitmapFile()V

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/users/EditUserInfoController;->mEditUserInfoDialog:Landroid/app/Dialog;

    .line 68
    iput-object v0, p0, Lcom/android/settings/users/EditUserInfoController;->mSavedPhoto:Landroid/graphics/Bitmap;

    .line 69
    return-void
.end method

.method public createDialog(Landroid/app/Fragment;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;ILcom/android/settings/users/EditUserInfoController$OnContentChangedCallback;Landroid/os/UserHandle;)Landroid/app/Dialog;
    .locals 14

    move-object v7, p0

    .line 114
    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 115
    move-object/from16 v1, p6

    iput-object v1, v7, Lcom/android/settings/users/EditUserInfoController;->mUser:Landroid/os/UserHandle;

    .line 116
    iget-object v1, v7, Lcom/android/settings/users/EditUserInfoController;->mUserManager:Landroid/os/UserManager;

    if-nez v1, :cond_0

    .line 117
    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    iput-object v1, v7, Lcom/android/settings/users/EditUserInfoController;->mUserManager:Landroid/os/UserManager;

    .line 119
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 120
    const v2, 0x7f0d008b    # @layout/edit_user_info_dialog_content 'res/layout/edit_user_info_dialog_content.xml'

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 122
    iget-object v2, v7, Lcom/android/settings/users/EditUserInfoController;->mUserManager:Landroid/os/UserManager;

    iget-object v3, v7, Lcom/android/settings/users/EditUserInfoController;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 124
    const v3, 0x7f0a03c2    # @id/user_name

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 125
    iget-object v4, v2, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 127
    const v4, 0x7f0a03c3    # @id/user_photo

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object v10, v4

    check-cast v10, Landroid/widget/ImageView;

    .line 128
    nop

    .line 129
    iget-object v4, v7, Lcom/android/settings/users/EditUserInfoController;->mSavedPhoto:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_1

    .line 130
    iget-object v2, v7, Lcom/android/settings/users/EditUserInfoController;->mSavedPhoto:Landroid/graphics/Bitmap;

    invoke-static {v0, v2}, Lcom/android/settingslib/drawable/CircleFramedDrawable;->getInstance(Landroid/content/Context;Landroid/graphics/Bitmap;)Lcom/android/settingslib/drawable/CircleFramedDrawable;

    move-result-object v2

    .line 137
    :goto_0
    move-object v12, v2

    goto :goto_1

    .line 132
    :cond_1
    nop

    .line 133
    if-nez p2, :cond_2

    .line 134
    iget-object v4, v7, Lcom/android/settings/users/EditUserInfoController;->mUserManager:Landroid/os/UserManager;

    invoke-static {v0, v4, v2}, Lcom/android/settingslib/Utils;->getUserIcon(Landroid/content/Context;Landroid/os/UserManager;Landroid/content/pm/UserInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_0

    .line 137
    :cond_2
    move-object/from16 v12, p2

    :goto_1
    invoke-virtual {v10, v12}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 138
    new-instance v2, Lcom/android/settings/users/EditUserPhotoController;

    iget-object v11, v7, Lcom/android/settings/users/EditUserInfoController;->mSavedPhoto:Landroid/graphics/Bitmap;

    iget-boolean v13, v7, Lcom/android/settings/users/EditUserInfoController;->mWaitingForActivityResult:Z

    move-object v8, v2

    move-object v9, p1

    invoke-direct/range {v8 .. v13}, Lcom/android/settings/users/EditUserPhotoController;-><init>(Landroid/app/Fragment;Landroid/widget/ImageView;Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;Z)V

    iput-object v2, v7, Lcom/android/settings/users/EditUserInfoController;->mEditUserPhotoController:Lcom/android/settings/users/EditUserPhotoController;

    .line 140
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f120aae    # @string/profile_info_settings_title 'Profile info'

    .line 141
    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 142
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 143
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const v9, 0x104000a    # @android:string/ok

    new-instance v10, Lcom/android/settings/users/EditUserInfoController$2;

    move-object v0, v10

    move-object v1, v7

    move-object v2, v3

    move-object/from16 v3, p3

    move-object/from16 v4, p5

    move-object/from16 v5, p2

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/users/EditUserInfoController$2;-><init>(Lcom/android/settings/users/EditUserInfoController;Landroid/widget/EditText;Ljava/lang/CharSequence;Lcom/android/settings/users/EditUserInfoController$OnContentChangedCallback;Landroid/graphics/drawable/Drawable;Landroid/app/Fragment;)V

    .line 144
    invoke-virtual {v8, v9, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000    # @android:string/cancel

    new-instance v2, Lcom/android/settings/users/EditUserInfoController$1;

    invoke-direct {v2, v7}, Lcom/android/settings/users/EditUserInfoController$1;-><init>(Lcom/android/settings/users/EditUserInfoController;)V

    .line 183
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 189
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, v7, Lcom/android/settings/users/EditUserInfoController;->mEditUserInfoDialog:Landroid/app/Dialog;

    .line 192
    iget-object v0, v7, Lcom/android/settings/users/EditUserInfoController;->mEditUserInfoDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 195
    iget-object v0, v7, Lcom/android/settings/users/EditUserInfoController;->mEditUserInfoDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 103
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/users/EditUserInfoController;->mWaitingForActivityResult:Z

    .line 105
    iget-object v0, p0, Lcom/android/settings/users/EditUserInfoController;->mEditUserInfoDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/users/EditUserInfoController;->mEditUserInfoDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/users/EditUserInfoController;->mEditUserPhotoController:Lcom/android/settings/users/EditUserPhotoController;

    .line 106
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/settings/users/EditUserPhotoController;->onActivityResult(IILandroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 107
    return-void

    .line 109
    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 76
    const-string v0, "pending_photo"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 77
    if-eqz v0, :cond_0

    .line 78
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/android/settings/users/EditUserPhotoController;->loadNewUserPhotoBitmap(Ljava/io/File;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/users/EditUserInfoController;->mSavedPhoto:Landroid/graphics/Bitmap;

    .line 80
    :cond_0
    const-string v0, "awaiting_result"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/users/EditUserInfoController;->mWaitingForActivityResult:Z

    .line 81
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 84
    iget-object v0, p0, Lcom/android/settings/users/EditUserInfoController;->mEditUserInfoDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/users/EditUserInfoController;->mEditUserInfoDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/users/EditUserInfoController;->mEditUserPhotoController:Lcom/android/settings/users/EditUserPhotoController;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/android/settings/users/EditUserInfoController;->mEditUserPhotoController:Lcom/android/settings/users/EditUserPhotoController;

    invoke-virtual {v0}, Lcom/android/settings/users/EditUserPhotoController;->saveNewUserPhotoBitmap()Ljava/io/File;

    move-result-object v0

    .line 89
    if-eqz v0, :cond_0

    .line 90
    const-string v1, "pending_photo"

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/users/EditUserInfoController;->mWaitingForActivityResult:Z

    if-eqz v0, :cond_1

    .line 94
    const-string v0, "awaiting_result"

    iget-boolean v1, p0, Lcom/android/settings/users/EditUserInfoController;->mWaitingForActivityResult:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 96
    :cond_1
    return-void
.end method

.method public startingActivityForResult()V
    .locals 1

    .line 99
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/users/EditUserInfoController;->mWaitingForActivityResult:Z

    .line 100
    return-void
.end method
