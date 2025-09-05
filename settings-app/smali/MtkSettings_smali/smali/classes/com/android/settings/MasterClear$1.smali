.class Lcom/android/settings/MasterClear$1;
.super Ljava/lang/Object;
.source "MasterClear.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/MasterClear;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/MasterClear;


# direct methods
.method constructor <init>(Lcom/android/settings/MasterClear;)V
    .locals 0

    .line 218
    iput-object p1, p0, Lcom/android/settings/MasterClear$1;->this$0:Lcom/android/settings/MasterClear;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 221
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 222
    invoke-static {p1}, Lcom/android/settings/Utils;->isDemoUser(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 223
    invoke-static {p1}, Lcom/android/settings/Utils;->getDeviceOwnerComponent(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v0

    .line 224
    if-eqz v0, :cond_0

    .line 225
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 226
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.action.FACTORY_RESET"

    .line 227
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 228
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 230
    :cond_0
    return-void

    .line 233
    :cond_1
    iget-object p1, p0, Lcom/android/settings/MasterClear$1;->this$0:Lcom/android/settings/MasterClear;

    const/16 v0, 0x37

    invoke-static {p1, v0}, Lcom/android/settings/MasterClear;->access$000(Lcom/android/settings/MasterClear;I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 234
    return-void

    .line 237
    :cond_2
    iget-object p1, p0, Lcom/android/settings/MasterClear$1;->this$0:Lcom/android/settings/MasterClear;

    invoke-virtual {p1}, Lcom/android/settings/MasterClear;->getAccountConfirmationIntent()Landroid/content/Intent;

    move-result-object p1

    .line 238
    if-eqz p1, :cond_3

    .line 239
    iget-object v0, p0, Lcom/android/settings/MasterClear$1;->this$0:Lcom/android/settings/MasterClear;

    invoke-virtual {v0, p1}, Lcom/android/settings/MasterClear;->showAccountCredentialConfirmation(Landroid/content/Intent;)V

    goto :goto_0

    .line 241
    :cond_3
    iget-object p1, p0, Lcom/android/settings/MasterClear$1;->this$0:Lcom/android/settings/MasterClear;

    invoke-virtual {p1}, Lcom/android/settings/MasterClear;->showFinalConfirmation()V

    .line 243
    :goto_0
    return-void
.end method
