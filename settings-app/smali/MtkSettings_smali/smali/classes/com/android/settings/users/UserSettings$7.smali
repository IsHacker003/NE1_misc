.class Lcom/android/settings/users/UserSettings$7;
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


# direct methods
.method constructor <init>(Lcom/android/settings/users/UserSettings;)V
    .locals 0

    .line 587
    iput-object p1, p0, Lcom/android/settings/users/UserSettings$7;->this$0:Lcom/android/settings/users/UserSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 589
    iget-object p1, p0, Lcom/android/settings/users/UserSettings$7;->this$0:Lcom/android/settings/users/UserSettings;

    iget-object p2, p0, Lcom/android/settings/users/UserSettings$7;->this$0:Lcom/android/settings/users/UserSettings;

    invoke-static {p2}, Lcom/android/settings/users/UserSettings;->access$1100(Lcom/android/settings/users/UserSettings;)I

    move-result p2

    invoke-static {p1, p2}, Lcom/android/settings/users/UserSettings;->access$1200(Lcom/android/settings/users/UserSettings;I)V

    .line 590
    return-void
.end method
