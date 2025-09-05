.class Lcom/android/settings/users/UserSettings$5;
.super Ljava/lang/Object;
.source "UserSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/users/UserSettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/users/UserSettings;

.field final synthetic val$longMessageDisplayed:Z

.field final synthetic val$preferences:Landroid/content/SharedPreferences;

.field final synthetic val$userType:I


# direct methods
.method constructor <init>(Lcom/android/settings/users/UserSettings;IZLandroid/content/SharedPreferences;)V
    .locals 0

    .line 555
    iput-object p1, p0, Lcom/android/settings/users/UserSettings$5;->this$0:Lcom/android/settings/users/UserSettings;

    iput p2, p0, Lcom/android/settings/users/UserSettings$5;->val$userType:I

    iput-boolean p3, p0, Lcom/android/settings/users/UserSettings$5;->val$longMessageDisplayed:Z

    iput-object p4, p0, Lcom/android/settings/users/UserSettings$5;->val$preferences:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 557
    iget-object p1, p0, Lcom/android/settings/users/UserSettings$5;->this$0:Lcom/android/settings/users/UserSettings;

    iget p2, p0, Lcom/android/settings/users/UserSettings$5;->val$userType:I

    invoke-static {p1, p2}, Lcom/android/settings/users/UserSettings;->access$1000(Lcom/android/settings/users/UserSettings;I)V

    .line 558
    iget-boolean p1, p0, Lcom/android/settings/users/UserSettings$5;->val$longMessageDisplayed:Z

    if-nez p1, :cond_0

    .line 559
    iget-object p1, p0, Lcom/android/settings/users/UserSettings$5;->val$preferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p2, "key_add_user_long_message_displayed"

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 561
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 563
    :cond_0
    return-void
.end method
