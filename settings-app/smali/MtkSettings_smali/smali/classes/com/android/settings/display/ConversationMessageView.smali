.class public Lcom/android/settings/display/ConversationMessageView;
.super Landroid/widget/FrameLayout;
.source "ConversationMessageView.java"


# instance fields
.field private mContactIconView:Landroid/widget/TextView;

.field private final mIconBackgroundColor:I

.field private final mIconText:Ljava/lang/CharSequence;

.field private final mIconTextColor:I

.field private final mIncoming:Z

.field private mMessageBubble:Landroid/widget/LinearLayout;

.field private final mMessageText:Ljava/lang/CharSequence;

.field private mMessageTextAndInfoView:Landroid/view/ViewGroup;

.field private mMessageTextView:Landroid/widget/TextView;

.field private mStatusTextView:Landroid/widget/TextView;

.field private final mTimestampText:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/display/ConversationMessageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 57
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/display/ConversationMessageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/settings/display/ConversationMessageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 66
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 68
    sget-object p3, Lcom/android/settings/R$styleable;->ConversationMessageView:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 71
    const/4 p3, 0x1

    const/4 p4, 0x3

    invoke-virtual {p2, p4, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p4

    iput-boolean p4, p0, Lcom/android/settings/display/ConversationMessageView;->mIncoming:Z

    .line 72
    const/4 p4, 0x4

    invoke-virtual {p2, p4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p4

    iput-object p4, p0, Lcom/android/settings/display/ConversationMessageView;->mMessageText:Ljava/lang/CharSequence;

    .line 73
    const/4 p4, 0x5

    invoke-virtual {p2, p4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p4

    iput-object p4, p0, Lcom/android/settings/display/ConversationMessageView;->mTimestampText:Ljava/lang/CharSequence;

    .line 74
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/android/settings/display/ConversationMessageView;->mIconText:Ljava/lang/CharSequence;

    .line 75
    const/4 p3, 0x0

    const/4 p4, 0x2

    invoke-virtual {p2, p4, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p4

    iput p4, p0, Lcom/android/settings/display/ConversationMessageView;->mIconTextColor:I

    .line 76
    invoke-virtual {p2, p3, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/android/settings/display/ConversationMessageView;->mIconBackgroundColor:I

    .line 78
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 79
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const p3, 0x7f0d0060    # @layout/conversation_message_icon 'res/layout/conversation_message_icon.xml'

    invoke-virtual {p2, p3, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 80
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0d005f    # @layout/conversation_message_content 'res/layout/conversation_message_content.xml'

    invoke-virtual {p1, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 81
    return-void
.end method

.method private static getTintedDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 255
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    .line 256
    if-eqz v0, :cond_0

    .line 257
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    .line 258
    :cond_0
    nop

    .line 259
    :goto_0
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, p2, p0}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 260
    return-object p1
.end method

.method private static isLayoutRtl(Landroid/view/View;)Z
    .locals 1

    .line 166
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result p0

    const/4 v0, 0x1

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private updateTextAppearance()V
    .locals 3

    .line 241
    iget-boolean v0, p0, Lcom/android/settings/display/ConversationMessageView;->mIncoming:Z

    if-eqz v0, :cond_0

    const v0, 0x7f06008b    # @color/message_text_incoming '#ffffffff'

    goto :goto_0

    .line 242
    :cond_0
    const v0, 0x7f06008c    # @color/message_text_outgoing '#ff323232'

    .line 243
    :goto_0
    iget-boolean v1, p0, Lcom/android/settings/display/ConversationMessageView;->mIncoming:Z

    if-eqz v1, :cond_1

    const v1, 0x7f0600d1    # @color/timestamp_text_incoming '#99ffffff'

    goto :goto_1

    .line 244
    :cond_1
    const v1, 0x7f0600d2    # @color/timestamp_text_outgoing '#99323232'

    .line 245
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/display/ConversationMessageView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    .line 247
    iget-object v2, p0, Lcom/android/settings/display/ConversationMessageView;->mMessageTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 248
    iget-object v2, p0, Lcom/android/settings/display/ConversationMessageView;->mMessageTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setLinkTextColor(I)V

    .line 249
    iget-object v0, p0, Lcom/android/settings/display/ConversationMessageView;->mStatusTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 250
    return-void
.end method

.method private updateViewAppearance()V
    .locals 11

    .line 181
    invoke-virtual {p0}, Lcom/android/settings/display/ConversationMessageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 183
    const v1, 0x7f0700f5    # @dimen/message_bubble_arrow_width '9.0dp'

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 185
    const v2, 0x7f0700f9    # @dimen/message_text_left_right_padding '14.0dp'

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .line 187
    const v3, 0x7f0700fa    # @dimen/message_text_top_padding '10.0dp'

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    .line 189
    const v4, 0x7f0700f8    # @dimen/message_text_bottom_padding '12.0dp'

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    .line 194
    iget-boolean v5, p0, Lcom/android/settings/display/ConversationMessageView;->mIncoming:Z

    if-eqz v5, :cond_0

    .line 195
    add-int/2addr v1, v2

    .line 196
    nop

    .line 203
    move v10, v2

    move v2, v1

    move v1, v10

    goto :goto_0

    .line 198
    :cond_0
    nop

    .line 199
    add-int/2addr v1, v2

    .line 203
    :goto_0
    iget-boolean v5, p0, Lcom/android/settings/display/ConversationMessageView;->mIncoming:Z

    if-eqz v5, :cond_1

    const v5, 0x800013

    goto :goto_1

    .line 204
    :cond_1
    const v5, 0x800015

    .line 205
    :goto_1
    const v6, 0x7f0700f7    # @dimen/message_padding_default '18.0dp'

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 207
    const v7, 0x7f0700f6    # @dimen/message_metadata_top_padding '4.0dp'

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 211
    iget-boolean v7, p0, Lcom/android/settings/display/ConversationMessageView;->mIncoming:Z

    if-eqz v7, :cond_2

    const v7, 0x7f0801d3    # @drawable/msg_bubble_incoming 'res/drawable-ldrtl-xhdpi/msg_bubble_incoming.9.png'

    goto :goto_2

    .line 212
    :cond_2
    const v7, 0x7f0801d4    # @drawable/msg_bubble_outgoing 'res/drawable-ldrtl-xhdpi/msg_bubble_outgoing.9.png'

    .line 213
    :goto_2
    iget-boolean v8, p0, Lcom/android/settings/display/ConversationMessageView;->mIncoming:Z

    if-eqz v8, :cond_3

    const v8, 0x7f060085    # @color/message_bubble_incoming '#689f38'

    goto :goto_3

    .line 214
    :cond_3
    const v8, 0x7f060086    # @color/message_bubble_outgoing '#ffffffff'

    .line 215
    :goto_3
    invoke-virtual {p0}, Lcom/android/settings/display/ConversationMessageView;->getContext()Landroid/content/Context;

    move-result-object v9

    .line 217
    nop

    .line 218
    invoke-virtual {v9, v7}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 219
    invoke-virtual {v9, v8}, Landroid/content/Context;->getColor(I)I

    move-result v8

    .line 217
    invoke-static {v9, v7, v8}, Lcom/android/settings/display/ConversationMessageView;->getTintedDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 220
    iget-object v8, p0, Lcom/android/settings/display/ConversationMessageView;->mMessageTextAndInfoView:Landroid/view/ViewGroup;

    invoke-virtual {v8, v7}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 222
    invoke-static {p0}, Lcom/android/settings/display/ConversationMessageView;->isLayoutRtl(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 224
    iget-object v7, p0, Lcom/android/settings/display/ConversationMessageView;->mMessageTextAndInfoView:Landroid/view/ViewGroup;

    add-int/2addr v3, v0

    invoke-virtual {v7, v1, v3, v2, v4}, Landroid/view/ViewGroup;->setPadding(IIII)V

    goto :goto_4

    .line 228
    :cond_4
    iget-object v7, p0, Lcom/android/settings/display/ConversationMessageView;->mMessageTextAndInfoView:Landroid/view/ViewGroup;

    add-int/2addr v3, v0

    invoke-virtual {v7, v2, v3, v1, v4}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 234
    :goto_4
    invoke-virtual {p0}, Lcom/android/settings/display/ConversationMessageView;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/settings/display/ConversationMessageView;->getPaddingRight()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v6, v1, v2}, Lcom/android/settings/display/ConversationMessageView;->setPadding(IIII)V

    .line 235
    iget-object v0, p0, Lcom/android/settings/display/ConversationMessageView;->mMessageBubble:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 237
    invoke-direct {p0}, Lcom/android/settings/display/ConversationMessageView;->updateTextAppearance()V

    .line 238
    return-void
.end method

.method private updateViewContent()V
    .locals 4

    .line 170
    iget-object v0, p0, Lcom/android/settings/display/ConversationMessageView;->mMessageTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/display/ConversationMessageView;->mMessageText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    iget-object v0, p0, Lcom/android/settings/display/ConversationMessageView;->mStatusTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/display/ConversationMessageView;->mTimestampText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    iget-object v0, p0, Lcom/android/settings/display/ConversationMessageView;->mContactIconView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/display/ConversationMessageView;->mIconText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    iget-object v0, p0, Lcom/android/settings/display/ConversationMessageView;->mContactIconView:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/settings/display/ConversationMessageView;->mIconTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 175
    invoke-virtual {p0}, Lcom/android/settings/display/ConversationMessageView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f08009c    # @drawable/conversation_message_icon 'res/drawable/conversation_message_icon.xml'

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 176
    iget-object v1, p0, Lcom/android/settings/display/ConversationMessageView;->mContactIconView:Landroid/widget/TextView;

    .line 177
    invoke-virtual {p0}, Lcom/android/settings/display/ConversationMessageView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/display/ConversationMessageView;->mIconBackgroundColor:I

    invoke-static {v2, v0, v3}, Lcom/android/settings/display/ConversationMessageView;->getTintedDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 178
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .line 85
    const v0, 0x7f0a020d    # @id/message_content

    invoke-virtual {p0, v0}, Lcom/android/settings/display/ConversationMessageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/settings/display/ConversationMessageView;->mMessageBubble:Landroid/widget/LinearLayout;

    .line 86
    const v0, 0x7f0a0210    # @id/message_text_and_info

    invoke-virtual {p0, v0}, Lcom/android/settings/display/ConversationMessageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/settings/display/ConversationMessageView;->mMessageTextAndInfoView:Landroid/view/ViewGroup;

    .line 87
    const v0, 0x7f0a020f    # @id/message_text

    invoke-virtual {p0, v0}, Lcom/android/settings/display/ConversationMessageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/display/ConversationMessageView;->mMessageTextView:Landroid/widget/TextView;

    .line 88
    const v0, 0x7f0a020e    # @id/message_status

    invoke-virtual {p0, v0}, Lcom/android/settings/display/ConversationMessageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/display/ConversationMessageView;->mStatusTextView:Landroid/widget/TextView;

    .line 89
    const v0, 0x7f0a00de    # @id/conversation_icon

    invoke-virtual {p0, v0}, Lcom/android/settings/display/ConversationMessageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/display/ConversationMessageView;->mContactIconView:Landroid/widget/TextView;

    .line 90
    invoke-direct {p0}, Lcom/android/settings/display/ConversationMessageView;->updateViewContent()V

    .line 91
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    .line 129
    invoke-static {p0}, Lcom/android/settings/display/ConversationMessageView;->isLayoutRtl(Landroid/view/View;)Z

    move-result p1

    .line 131
    iget-object p3, p0, Lcom/android/settings/display/ConversationMessageView;->mContactIconView:Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result p3

    .line 132
    iget-object p5, p0, Lcom/android/settings/display/ConversationMessageView;->mContactIconView:Landroid/widget/TextView;

    invoke-virtual {p5}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result p5

    .line 133
    invoke-virtual {p0}, Lcom/android/settings/display/ConversationMessageView;->getPaddingTop()I

    move-result v0

    .line 134
    sub-int/2addr p4, p2

    sub-int p2, p4, p3

    invoke-virtual {p0}, Lcom/android/settings/display/ConversationMessageView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr p2, v1

    invoke-virtual {p0}, Lcom/android/settings/display/ConversationMessageView;->getPaddingRight()I

    move-result v1

    sub-int/2addr p2, v1

    .line 135
    iget-object v1, p0, Lcom/android/settings/display/ConversationMessageView;->mMessageBubble:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v1

    .line 136
    nop

    .line 141
    iget-boolean v2, p0, Lcom/android/settings/display/ConversationMessageView;->mIncoming:Z

    if-eqz v2, :cond_1

    .line 142
    if-eqz p1, :cond_0

    .line 143
    invoke-virtual {p0}, Lcom/android/settings/display/ConversationMessageView;->getPaddingRight()I

    move-result p1

    sub-int/2addr p4, p1

    sub-int/2addr p4, p3

    .line 144
    sub-int p1, p4, p2

    goto :goto_0

    .line 146
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/display/ConversationMessageView;->getPaddingLeft()I

    move-result p4

    .line 147
    add-int p1, p4, p3

    goto :goto_0

    .line 150
    :cond_1
    if-eqz p1, :cond_2

    .line 151
    invoke-virtual {p0}, Lcom/android/settings/display/ConversationMessageView;->getPaddingLeft()I

    move-result p4

    .line 152
    add-int p1, p4, p3

    goto :goto_0

    .line 154
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/display/ConversationMessageView;->getPaddingRight()I

    move-result p1

    sub-int/2addr p4, p1

    sub-int/2addr p4, p3

    .line 155
    sub-int p1, p4, p2

    .line 159
    :goto_0
    iget-object v2, p0, Lcom/android/settings/display/ConversationMessageView;->mContactIconView:Landroid/widget/TextView;

    add-int/2addr p3, p4

    add-int/2addr p5, v0

    invoke-virtual {v2, p4, v0, p3, p5}, Landroid/widget/TextView;->layout(IIII)V

    .line 161
    iget-object p3, p0, Lcom/android/settings/display/ConversationMessageView;->mMessageBubble:Landroid/widget/LinearLayout;

    add-int/2addr p2, p1

    add-int/2addr v1, v0

    invoke-virtual {p3, p1, v0, p2, v1}, Landroid/widget/LinearLayout;->layout(IIII)V

    .line 163
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 95
    invoke-direct {p0}, Lcom/android/settings/display/ConversationMessageView;->updateViewAppearance()V

    .line 97
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 99
    const/4 p2, 0x0

    invoke-static {p2, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 100
    invoke-static {p2, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 102
    iget-object v1, p0, Lcom/android/settings/display/ConversationMessageView;->mContactIconView:Landroid/widget/TextView;

    invoke-virtual {v1, p2, p2}, Landroid/widget/TextView;->measure(II)V

    .line 103
    iget-object p2, p0, Lcom/android/settings/display/ConversationMessageView;->mContactIconView:Landroid/widget/TextView;

    .line 104
    invoke-virtual {p2}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result p2

    iget-object v1, p0, Lcom/android/settings/display/ConversationMessageView;->mContactIconView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v1

    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 103
    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 106
    iget-object v1, p0, Lcom/android/settings/display/ConversationMessageView;->mContactIconView:Landroid/widget/TextView;

    invoke-virtual {v1, p2, p2}, Landroid/widget/TextView;->measure(II)V

    .line 108
    nop

    .line 109
    invoke-virtual {p0}, Lcom/android/settings/display/ConversationMessageView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x7f0700f5    # @dimen/message_bubble_arrow_width '9.0dp'

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    .line 114
    iget-object v1, p0, Lcom/android/settings/display/ConversationMessageView;->mContactIconView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    sub-int v1, p1, v1

    sub-int/2addr v1, p2

    .line 115
    invoke-virtual {p0}, Lcom/android/settings/display/ConversationMessageView;->getPaddingLeft()I

    move-result p2

    sub-int/2addr v1, p2

    invoke-virtual {p0}, Lcom/android/settings/display/ConversationMessageView;->getPaddingRight()I

    move-result p2

    sub-int/2addr v1, p2

    .line 116
    const/high16 p2, -0x80000000

    invoke-static {v1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 119
    iget-object v1, p0, Lcom/android/settings/display/ConversationMessageView;->mMessageBubble:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p2, v0}, Landroid/widget/LinearLayout;->measure(II)V

    .line 121
    iget-object p2, p0, Lcom/android/settings/display/ConversationMessageView;->mContactIconView:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result p2

    iget-object v0, p0, Lcom/android/settings/display/ConversationMessageView;->mMessageBubble:Landroid/widget/LinearLayout;

    .line 122
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v0

    .line 121
    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 123
    invoke-virtual {p0}, Lcom/android/settings/display/ConversationMessageView;->getPaddingBottom()I

    move-result v0

    add-int/2addr p2, v0

    invoke-virtual {p0}, Lcom/android/settings/display/ConversationMessageView;->getPaddingTop()I

    move-result v0

    add-int/2addr p2, v0

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/display/ConversationMessageView;->setMeasuredDimension(II)V

    .line 124
    return-void
.end method
