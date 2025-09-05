.class Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener$3;
.super Ljava/lang/Object;
.source "CustomPreviewSeekBarPreferenceFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;->showDialog(Landroid/app/Activity;Landroid/widget/SeekBar;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$seekBar:Landroid/widget/SeekBar;


# direct methods
.method constructor <init>(Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;Landroid/widget/SeekBar;Landroid/app/Activity;)V
    .locals 0

    .line 211
    iput-object p1, p0, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener$3;->this$1:Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;

    iput-object p2, p0, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener$3;->val$seekBar:Landroid/widget/SeekBar;

    iput-object p3, p0, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener$3;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 215
    iget-object p1, p0, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener$3;->this$1:Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;

    iget-object p1, p1, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;->this$0:Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment;->access$302(Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment;Z)Z

    .line 216
    const-string p1, "NOT checked"

    .line 217
    iget-object v0, p0, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener$3;->this$1:Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;

    iget-object v0, v0, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;->this$0:Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment;

    invoke-static {v0}, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment;->access$200(Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    const-string p1, "checked"

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener$3;->this$1:Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;

    .line 221
    invoke-static {v0}, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;->access$400(Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "check_box_pref"

    invoke-virtual {v0, v1, p2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p2

    .line 222
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    .line 223
    const-string v0, "skipMessage"

    invoke-interface {p2, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 224
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 226
    iget-object p1, p0, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener$3;->this$1:Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;

    .line 227
    invoke-static {p1}, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;->access$400(Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "font_scale"

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, p2, v0}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result p1

    .line 229
    iget-object p2, p0, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener$3;->this$1:Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;

    iget-object p2, p2, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;->this$0:Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment;

    iget-object v0, p0, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener$3;->this$1:Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;

    .line 231
    invoke-virtual {v0}, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;->getFontEntryValues()[Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/mediatek/settings/accessibility/CustomToggleFontSizePreferenceFragment;->fontSizeValueToIndex(F[Ljava/lang/String;)I

    move-result p1

    .line 229
    invoke-static {p2, p1}, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment;->access$502(Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment;I)I

    .line 232
    const-string p1, "CustomPreviewSeekBarPreferenceFragment"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "@M_onNegativeClick mOldProgress: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener$3;->this$1:Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;

    iget-object v0, v0, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;->this$0:Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment;

    invoke-static {v0}, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment;->access$500(Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment;)I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    iget-object p1, p0, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener$3;->val$seekBar:Landroid/widget/SeekBar;

    iget-object p2, p0, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener$3;->this$1:Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;

    iget-object p2, p2, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;->this$0:Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment;

    invoke-static {p2}, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment;->access$500(Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 235
    iget-object p1, p0, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener$3;->val$activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 236
    iget-object p2, p0, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener$3;->val$activity:Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->finish()V

    .line 237
    iget-object p2, p0, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener$3;->val$activity:Landroid/app/Activity;

    invoke-virtual {p2, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 238
    return-void
.end method
