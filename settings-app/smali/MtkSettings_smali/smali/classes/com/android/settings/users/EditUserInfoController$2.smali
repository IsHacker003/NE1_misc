.class Lcom/android/settings/users/EditUserInfoController$2;
.super Ljava/lang/Object;
.source "EditUserInfoController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/users/EditUserInfoController;->createDialog(Landroid/app/Fragment;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;ILcom/android/settings/users/EditUserInfoController$OnContentChangedCallback;Landroid/os/UserHandle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/users/EditUserInfoController;

.field final synthetic val$callback:Lcom/android/settings/users/EditUserInfoController$OnContentChangedCallback;

.field final synthetic val$currentUserIcon:Landroid/graphics/drawable/Drawable;

.field final synthetic val$currentUserName:Ljava/lang/CharSequence;

.field final synthetic val$fragment:Landroid/app/Fragment;

.field final synthetic val$userNameView:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/android/settings/users/EditUserInfoController;Landroid/widget/EditText;Ljava/lang/CharSequence;Lcom/android/settings/users/EditUserInfoController$OnContentChangedCallback;Landroid/graphics/drawable/Drawable;Landroid/app/Fragment;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/android/settings/users/EditUserInfoController$2;->this$0:Lcom/android/settings/users/EditUserInfoController;

    iput-object p2, p0, Lcom/android/settings/users/EditUserInfoController$2;->val$userNameView:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/android/settings/users/EditUserInfoController$2;->val$currentUserName:Ljava/lang/CharSequence;

    iput-object p4, p0, Lcom/android/settings/users/EditUserInfoController$2;->val$callback:Lcom/android/settings/users/EditUserInfoController$OnContentChangedCallback;

    iput-object p5, p0, Lcom/android/settings/users/EditUserInfoController$2;->val$currentUserIcon:Landroid/graphics/drawable/Drawable;

    iput-object p6, p0, Lcom/android/settings/users/EditUserInfoController$2;->val$fragment:Landroid/app/Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 147
    const/4 p1, -0x1

    if-ne p2, p1, :cond_5

    .line 149
    iget-object p1, p0, Lcom/android/settings/users/EditUserInfoController$2;->val$userNameView:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    .line 150
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 151
    iget-object p2, p0, Lcom/android/settings/users/EditUserInfoController$2;->val$currentUserName:Ljava/lang/CharSequence;

    if-eqz p2, :cond_0

    .line 152
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/android/settings/users/EditUserInfoController$2;->val$currentUserName:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 153
    :cond_0
    iget-object p2, p0, Lcom/android/settings/users/EditUserInfoController$2;->val$callback:Lcom/android/settings/users/EditUserInfoController$OnContentChangedCallback;

    if-eqz p2, :cond_1

    .line 154
    iget-object p2, p0, Lcom/android/settings/users/EditUserInfoController$2;->val$callback:Lcom/android/settings/users/EditUserInfoController$OnContentChangedCallback;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/android/settings/users/EditUserInfoController$OnContentChangedCallback;->onLabelChanged(Ljava/lang/CharSequence;)V

    .line 156
    :cond_1
    iget-object p2, p0, Lcom/android/settings/users/EditUserInfoController$2;->this$0:Lcom/android/settings/users/EditUserInfoController;

    invoke-static {p2}, Lcom/android/settings/users/EditUserInfoController;->access$100(Lcom/android/settings/users/EditUserInfoController;)Landroid/os/UserManager;

    move-result-object p2

    iget-object v0, p0, Lcom/android/settings/users/EditUserInfoController$2;->this$0:Lcom/android/settings/users/EditUserInfoController;

    invoke-static {v0}, Lcom/android/settings/users/EditUserInfoController;->access$000(Lcom/android/settings/users/EditUserInfoController;)Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 157
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 156
    invoke-virtual {p2, v0, p1}, Landroid/os/UserManager;->setUserName(ILjava/lang/String;)V

    .line 161
    :cond_2
    iget-object p1, p0, Lcom/android/settings/users/EditUserInfoController$2;->this$0:Lcom/android/settings/users/EditUserInfoController;

    invoke-static {p1}, Lcom/android/settings/users/EditUserInfoController;->access$200(Lcom/android/settings/users/EditUserInfoController;)Lcom/android/settings/users/EditUserPhotoController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/users/EditUserPhotoController;->getNewUserPhotoDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 162
    iget-object p2, p0, Lcom/android/settings/users/EditUserInfoController$2;->this$0:Lcom/android/settings/users/EditUserInfoController;

    invoke-static {p2}, Lcom/android/settings/users/EditUserInfoController;->access$200(Lcom/android/settings/users/EditUserInfoController;)Lcom/android/settings/users/EditUserPhotoController;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/settings/users/EditUserPhotoController;->getNewUserPhotoBitmap()Landroid/graphics/Bitmap;

    move-result-object p2

    .line 163
    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/android/settings/users/EditUserInfoController$2;->val$currentUserIcon:Landroid/graphics/drawable/Drawable;

    .line 164
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    .line 165
    iget-object p2, p0, Lcom/android/settings/users/EditUserInfoController$2;->val$callback:Lcom/android/settings/users/EditUserInfoController$OnContentChangedCallback;

    if-eqz p2, :cond_3

    .line 166
    iget-object p2, p0, Lcom/android/settings/users/EditUserInfoController$2;->val$callback:Lcom/android/settings/users/EditUserInfoController$OnContentChangedCallback;

    invoke-interface {p2, p1}, Lcom/android/settings/users/EditUserInfoController$OnContentChangedCallback;->onPhotoChanged(Landroid/graphics/drawable/Drawable;)V

    .line 168
    :cond_3
    new-instance p1, Lcom/android/settings/users/EditUserInfoController$2$1;

    invoke-direct {p1, p0}, Lcom/android/settings/users/EditUserInfoController$2$1;-><init>(Lcom/android/settings/users/EditUserInfoController$2;)V

    sget-object p2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Void;

    .line 175
    invoke-virtual {p1, p2, v0}, Lcom/android/settings/users/EditUserInfoController$2$1;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 177
    :cond_4
    iget-object p1, p0, Lcom/android/settings/users/EditUserInfoController$2;->val$fragment:Landroid/app/Fragment;

    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/app/Activity;->removeDialog(I)V

    .line 180
    :cond_5
    iget-object p1, p0, Lcom/android/settings/users/EditUserInfoController$2;->this$0:Lcom/android/settings/users/EditUserInfoController;

    invoke-virtual {p1}, Lcom/android/settings/users/EditUserInfoController;->clear()V

    .line 181
    return-void
.end method
