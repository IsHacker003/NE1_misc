.class Lcom/android/settings/sim/SimPreferenceDialog$5;
.super Ljava/lang/Object;
.source "SimPreferenceDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


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

    .line 236
    iput-object p1, p0, Lcom/android/settings/sim/SimPreferenceDialog$5;->this$0:Lcom/android/settings/sim/SimPreferenceDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 239
    const/4 p3, 0x4

    if-ne p2, p3, :cond_0

    .line 240
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 241
    const/4 p1, 0x1

    return p1

    .line 243
    :cond_0
    const/4 p1, 0x0

    return p1
.end method
