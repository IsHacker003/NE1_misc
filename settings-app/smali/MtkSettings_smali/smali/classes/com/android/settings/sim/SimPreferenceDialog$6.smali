.class Lcom/android/settings/sim/SimPreferenceDialog$6;
.super Ljava/lang/Object;
.source "SimPreferenceDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/sim/SimPreferenceDialog;->createEditDialog(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/sim/SimPreferenceDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/sim/SimPreferenceDialog;)V
    .locals 0

    .line 247
    iput-object p1, p0, Lcom/android/settings/sim/SimPreferenceDialog$6;->this$0:Lcom/android/settings/sim/SimPreferenceDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .line 250
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 251
    return-void
.end method
