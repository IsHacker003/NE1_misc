.class Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener$2;
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

.field final synthetic val$value:I


# direct methods
.method constructor <init>(Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;I)V
    .locals 0

    .line 181
    iput-object p1, p0, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener$2;->this$1:Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;

    iput p2, p0, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener$2;->val$value:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 185
    iget-object p1, p0, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener$2;->this$1:Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;

    iget-object p1, p1, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;->this$0:Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment;->access$302(Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment;Z)Z

    .line 186
    const-string p1, "NOT checked"

    .line 187
    iget-object v0, p0, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener$2;->this$1:Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;

    iget-object v0, v0, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;->this$0:Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment;

    invoke-static {v0}, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment;->access$200(Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    const-string p1, "checked"

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener$2;->this$1:Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;

    .line 191
    invoke-static {v0}, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;->access$400(Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "check_box_pref"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 192
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 193
    const-string v1, "skipMessage"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 194
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 196
    iget-object p1, p0, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener$2;->this$1:Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;

    iget-object p1, p1, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;->this$0:Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment;

    invoke-virtual {p1}, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment;->commit()V

    .line 197
    iget-object p1, p0, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener$2;->this$1:Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;

    .line 198
    invoke-static {p1}, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;->access$400(Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "font_scale"

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result p1

    .line 200
    iget-object v0, p0, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener$2;->this$1:Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;

    iget-object v0, v0, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;->this$0:Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment;

    iget-object v1, p0, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener$2;->this$1:Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;

    .line 202
    invoke-virtual {v1}, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;->getFontEntryValues()[Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/mediatek/settings/accessibility/CustomToggleFontSizePreferenceFragment;->fontSizeValueToIndex(F[Ljava/lang/String;)I

    move-result p1

    .line 200
    invoke-static {v0, p1}, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment;->access$502(Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment;I)I

    .line 203
    const-string p1, "CustomPreviewSeekBarPreferenceFragment"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "@M_onPositiveClick mOldProgress: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener$2;->this$1:Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;

    iget-object v1, v1, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;->this$0:Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment;

    invoke-static {v1}, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment;->access$500(Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    iget-object p1, p0, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener$2;->this$1:Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;

    iget-object p1, p1, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;->this$0:Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment;

    iget v0, p0, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener$2;->val$value:I

    invoke-static {p1, v0, p2}, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment;->access$100(Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment;IZ)V

    .line 205
    iget-object p1, p0, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener$2;->this$1:Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;

    invoke-static {p1}, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;->access$600(Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 206
    iget-object p1, p0, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener$2;->this$1:Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;

    iget-object p1, p1, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;->this$0:Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment;

    invoke-virtual {p1}, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment;->commit()V

    .line 208
    :cond_1
    return-void
.end method
