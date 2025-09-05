.class Lcom/android/settings/SettingsActivity$3;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SettingsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SettingsActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/SettingsActivity;)V
    .locals 0

    .line 383
    iput-object p1, p0, Lcom/android/settings/SettingsActivity$3;->this$0:Lcom/android/settings/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 385
    iget-object p1, p0, Lcom/android/settings/SettingsActivity$3;->this$0:Lcom/android/settings/SettingsActivity;

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/android/settings/SettingsActivity;->setResult(ILandroid/content/Intent;)V

    .line 386
    iget-object p1, p0, Lcom/android/settings/SettingsActivity$3;->this$0:Lcom/android/settings/SettingsActivity;

    invoke-virtual {p1}, Lcom/android/settings/SettingsActivity;->finish()V

    .line 387
    return-void
.end method
