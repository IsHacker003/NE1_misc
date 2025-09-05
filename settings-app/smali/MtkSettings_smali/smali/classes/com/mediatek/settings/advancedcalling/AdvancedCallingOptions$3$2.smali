.class Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions$3$2;
.super Ljava/lang/Object;
.source "AdvancedCallingOptions.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions$3;->onCheckedChanged(Landroid/widget/RadioGroup;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions$3;

.field final synthetic val$dontShowAgain:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions$3;Landroid/widget/CheckBox;)V
    .locals 0

    .line 233
    iput-object p1, p0, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions$3$2;->this$1:Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions$3;

    iput-object p2, p0, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions$3$2;->val$dontShowAgain:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 236
    const-string p1, "NOT checked"

    .line 237
    iget-object p2, p0, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions$3$2;->val$dontShowAgain:Landroid/widget/CheckBox;

    invoke-virtual {p2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 238
    const-string p1, "checked"

    .line 240
    :cond_0
    iget-object p2, p0, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions$3$2;->this$1:Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions$3;

    iget-object p2, p2, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions$3;->this$0:Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;

    invoke-static {p2}, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;->access$300(Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;)Landroid/content/Context;

    move-result-object p2

    const-string v0, "preff_advanced_calling"

    const/4 v1, 0x0

    .line 241
    invoke-virtual {p2, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p2

    .line 242
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    .line 243
    const-string v0, "skipMessage4"

    invoke-interface {p2, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 244
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 245
    return-void
.end method
