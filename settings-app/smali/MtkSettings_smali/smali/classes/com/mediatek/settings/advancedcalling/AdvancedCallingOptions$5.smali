.class Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions$5;
.super Ljava/lang/Object;
.source "AdvancedCallingOptions.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;->onSwitchChanged(Landroid/widget/Switch;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;

.field final synthetic val$dontShowAgain:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;Landroid/widget/CheckBox;)V
    .locals 0

    .line 404
    iput-object p1, p0, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions$5;->this$0:Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;

    iput-object p2, p0, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions$5;->val$dontShowAgain:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 408
    const-string p1, "NOT checked"

    .line 409
    iget-object p2, p0, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions$5;->val$dontShowAgain:Landroid/widget/CheckBox;

    invoke-virtual {p2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 410
    const-string p1, "checked"

    .line 412
    :cond_0
    iget-object p2, p0, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions$5;->this$0:Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;

    invoke-static {p2}, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;->access$300(Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;)Landroid/content/Context;

    move-result-object p2

    const-string v0, "preff_advanced_calling"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p2

    .line 414
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    .line 415
    const-string v0, "skipMessage2"

    invoke-interface {p2, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 416
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 417
    return-void
.end method
