.class Lcom/android/settings/notification/ZenAccessSettings$ScaryWarningDialogFragment$2;
.super Ljava/lang/Object;
.source "ZenAccessSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/ZenAccessSettings$ScaryWarningDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/ZenAccessSettings$ScaryWarningDialogFragment;

.field final synthetic val$pkg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/ZenAccessSettings$ScaryWarningDialogFragment;Ljava/lang/String;)V
    .locals 0

    .line 271
    iput-object p1, p0, Lcom/android/settings/notification/ZenAccessSettings$ScaryWarningDialogFragment$2;->this$0:Lcom/android/settings/notification/ZenAccessSettings$ScaryWarningDialogFragment;

    iput-object p2, p0, Lcom/android/settings/notification/ZenAccessSettings$ScaryWarningDialogFragment$2;->val$pkg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 273
    iget-object p1, p0, Lcom/android/settings/notification/ZenAccessSettings$ScaryWarningDialogFragment$2;->this$0:Lcom/android/settings/notification/ZenAccessSettings$ScaryWarningDialogFragment;

    invoke-virtual {p1}, Lcom/android/settings/notification/ZenAccessSettings$ScaryWarningDialogFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settings/notification/ZenAccessSettings$ScaryWarningDialogFragment$2;->val$pkg:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Lcom/android/settings/notification/ZenAccessSettings;->access$100(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 274
    return-void
.end method
