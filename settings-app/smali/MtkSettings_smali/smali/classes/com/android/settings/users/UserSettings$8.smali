.class Lcom/android/settings/users/UserSettings$8;
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

    .line 613
    iput-object p1, p0, Lcom/android/settings/users/UserSettings$8;->this$0:Lcom/android/settings/users/UserSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 616
    iget-object p1, p0, Lcom/android/settings/users/UserSettings$8;->this$0:Lcom/android/settings/users/UserSettings;

    if-nez p2, :cond_0

    .line 617
    const/4 p2, 0x1

    goto :goto_0

    .line 618
    :cond_0
    const/4 p2, 0x2

    .line 616
    :goto_0
    invoke-static {p1, p2}, Lcom/android/settings/users/UserSettings;->access$1300(Lcom/android/settings/users/UserSettings;I)V

    .line 619
    return-void
.end method
