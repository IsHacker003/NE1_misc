.class public abstract Lcom/android/settings/accessibility/ListDialogPreference;
.super Lcom/android/settingslib/CustomDialogPreference;
.source "ListDialogPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/accessibility/ListDialogPreference$OnValueChangedListener;,
        Lcom/android/settings/accessibility/ListDialogPreference$SavedState;,
        Lcom/android/settings/accessibility/ListDialogPreference$ListPreferenceAdapter;
    }
.end annotation


# instance fields
.field private mEntryTitles:[Ljava/lang/CharSequence;

.field private mEntryValues:[I

.field private mListItemLayout:I

.field private mOnValueChangedListener:Lcom/android/settings/accessibility/ListDialogPreference$OnValueChangedListener;

.field private mValue:I

.field private mValueIndex:I

.field private mValueSet:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/CustomDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/accessibility/ListDialogPreference;)[I
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/android/settings/accessibility/ListDialogPreference;->mEntryValues:[I

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/settings/accessibility/ListDialogPreference;)I
    .locals 0

    .line 39
    iget p0, p0, Lcom/android/settings/accessibility/ListDialogPreference;->mListItemLayout:I

    return p0
.end method


# virtual methods
.method protected getIndexForValue(I)I
    .locals 4

    .line 180
    iget-object v0, p0, Lcom/android/settings/accessibility/ListDialogPreference;->mEntryValues:[I

    .line 181
    if-eqz v0, :cond_1

    .line 182
    array-length v1, v0

    .line 183
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 184
    aget v3, v0, v2

    if-ne v3, p1, :cond_0

    .line 185
    return v2

    .line 183
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 190
    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 1

    .line 133
    iget v0, p0, Lcom/android/settings/accessibility/ListDialogPreference;->mValueIndex:I

    if-ltz v0, :cond_0

    .line 134
    iget v0, p0, Lcom/android/settings/accessibility/ListDialogPreference;->mValueIndex:I

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/ListDialogPreference;->getTitleAt(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 137
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getTitleAt(I)Ljava/lang/CharSequence;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/android/settings/accessibility/ListDialogPreference;->mEntryTitles:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/accessibility/ListDialogPreference;->mEntryTitles:[Ljava/lang/CharSequence;

    array-length v0, v0

    if-gt v0, p1, :cond_0

    goto :goto_0

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/android/settings/accessibility/ListDialogPreference;->mEntryTitles:[Ljava/lang/CharSequence;

    aget-object p1, v0, p1

    return-object p1

    .line 118
    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getValue()I
    .locals 1

    .line 220
    iget v0, p0, Lcom/android/settings/accessibility/ListDialogPreference;->mValue:I

    return v0
.end method

.method protected getValueAt(I)I
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/android/settings/accessibility/ListDialogPreference;->mEntryValues:[I

    aget p1, v0, p1

    return p1
.end method

.method protected abstract onBindListItem(Landroid/view/View;I)V
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1

    .line 225
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 4

    .line 143
    invoke-super {p0, p1, p2}, Lcom/android/settingslib/CustomDialogPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;Landroid/content/DialogInterface$OnClickListener;)V

    .line 145
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ListDialogPreference;->getContext()Landroid/content/Context;

    move-result-object p2

    .line 146
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ListDialogPreference;->getDialogLayoutResource()I

    move-result v0

    .line 147
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 148
    new-instance v0, Lcom/android/settings/accessibility/ListDialogPreference$ListPreferenceAdapter;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/accessibility/ListDialogPreference$ListPreferenceAdapter;-><init>(Lcom/android/settings/accessibility/ListDialogPreference;Lcom/android/settings/accessibility/ListDialogPreference$1;)V

    .line 149
    const v2, 0x102000a    # @android:id/list

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/AbsListView;

    .line 150
    invoke-virtual {v2, v0}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 151
    new-instance v0, Lcom/android/settings/accessibility/ListDialogPreference$1;

    invoke-direct {v0, p0}, Lcom/android/settings/accessibility/ListDialogPreference$1;-><init>(Lcom/android/settings/accessibility/ListDialogPreference;)V

    invoke-virtual {v2, v0}, Landroid/widget/AbsListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 166
    iget v0, p0, Lcom/android/settings/accessibility/ListDialogPreference;->mValue:I

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/ListDialogPreference;->getIndexForValue(I)I

    move-result v0

    .line 167
    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    .line 168
    invoke-virtual {v2, v0}, Landroid/widget/AbsListView;->setSelection(I)V

    .line 171
    :cond_0
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 172
    invoke-virtual {p1, v1, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 173
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .line 248
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/android/settings/accessibility/ListDialogPreference$SavedState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 254
    :cond_0
    check-cast p1, Lcom/android/settings/accessibility/ListDialogPreference$SavedState;

    .line 255
    invoke-virtual {p1}, Lcom/android/settings/accessibility/ListDialogPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/android/settingslib/CustomDialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 256
    iget p1, p1, Lcom/android/settings/accessibility/ListDialogPreference$SavedState;->value:I

    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/ListDialogPreference;->setValue(I)V

    .line 257
    return-void

    .line 250
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/android/settingslib/CustomDialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 251
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 235
    invoke-super {p0}, Lcom/android/settingslib/CustomDialogPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 236
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ListDialogPreference;->isPersistent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 238
    return-object v0

    .line 241
    :cond_0
    new-instance v1, Lcom/android/settings/accessibility/ListDialogPreference$SavedState;

    invoke-direct {v1, v0}, Lcom/android/settings/accessibility/ListDialogPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 242
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ListDialogPreference;->getValue()I

    move-result v0

    iput v0, v1, Lcom/android/settings/accessibility/ListDialogPreference$SavedState;->value:I

    .line 243
    return-object v1
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 0

    .line 230
    if-eqz p1, :cond_0

    iget p1, p0, Lcom/android/settings/accessibility/ListDialogPreference;->mValue:I

    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/ListDialogPreference;->getPersistedInt(I)I

    move-result p1

    goto :goto_0

    :cond_0
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/ListDialogPreference;->setValue(I)V

    .line 231
    return-void
.end method

.method public setListItemLayoutResource(I)V
    .locals 0

    .line 76
    iput p1, p0, Lcom/android/settings/accessibility/ListDialogPreference;->mListItemLayout:I

    .line 77
    return-void
.end method

.method public setOnValueChangedListener(Lcom/android/settings/accessibility/ListDialogPreference$OnValueChangedListener;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/android/settings/accessibility/ListDialogPreference;->mOnValueChangedListener:Lcom/android/settings/accessibility/ListDialogPreference$OnValueChangedListener;

    .line 68
    return-void
.end method

.method public setTitles([Ljava/lang/CharSequence;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/android/settings/accessibility/ListDialogPreference;->mEntryTitles:[Ljava/lang/CharSequence;

    .line 100
    return-void
.end method

.method public setValue(I)V
    .locals 3

    .line 200
    iget v0, p0, Lcom/android/settings/accessibility/ListDialogPreference;->mValue:I

    const/4 v1, 0x1

    if-eq v0, p1, :cond_0

    .line 201
    move v0, v1

    goto :goto_0

    .line 200
    :cond_0
    const/4 v0, 0x0

    .line 201
    :goto_0
    if-nez v0, :cond_1

    iget-boolean v2, p0, Lcom/android/settings/accessibility/ListDialogPreference;->mValueSet:Z

    if-nez v2, :cond_3

    .line 202
    :cond_1
    iput p1, p0, Lcom/android/settings/accessibility/ListDialogPreference;->mValue:I

    .line 203
    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/ListDialogPreference;->getIndexForValue(I)I

    move-result v2

    iput v2, p0, Lcom/android/settings/accessibility/ListDialogPreference;->mValueIndex:I

    .line 204
    iput-boolean v1, p0, Lcom/android/settings/accessibility/ListDialogPreference;->mValueSet:Z

    .line 205
    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/ListDialogPreference;->persistInt(I)Z

    .line 206
    if-eqz v0, :cond_2

    .line 207
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ListDialogPreference;->shouldDisableDependents()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/ListDialogPreference;->notifyDependencyChange(Z)V

    .line 208
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ListDialogPreference;->notifyChanged()V

    .line 210
    :cond_2
    iget-object v0, p0, Lcom/android/settings/accessibility/ListDialogPreference;->mOnValueChangedListener:Lcom/android/settings/accessibility/ListDialogPreference$OnValueChangedListener;

    if-eqz v0, :cond_3

    .line 211
    iget-object v0, p0, Lcom/android/settings/accessibility/ListDialogPreference;->mOnValueChangedListener:Lcom/android/settings/accessibility/ListDialogPreference$OnValueChangedListener;

    invoke-interface {v0, p0, p1}, Lcom/android/settings/accessibility/ListDialogPreference$OnValueChangedListener;->onValueChanged(Lcom/android/settings/accessibility/ListDialogPreference;I)V

    .line 214
    :cond_3
    return-void
.end method

.method public setValues([I)V
    .locals 1

    .line 85
    iput-object p1, p0, Lcom/android/settings/accessibility/ListDialogPreference;->mEntryValues:[I

    .line 87
    iget-boolean p1, p0, Lcom/android/settings/accessibility/ListDialogPreference;->mValueSet:Z

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/android/settings/accessibility/ListDialogPreference;->mValueIndex:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 88
    iget p1, p0, Lcom/android/settings/accessibility/ListDialogPreference;->mValue:I

    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/ListDialogPreference;->getIndexForValue(I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/accessibility/ListDialogPreference;->mValueIndex:I

    .line 90
    :cond_0
    return-void
.end method
