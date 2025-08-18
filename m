Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 348A8B29EE7
	for <lists+openipmi-developer@lfdr.de>; Mon, 18 Aug 2025 12:16:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Type:Cc:Reply-To:From:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:In-Reply-To:References:MIME-Version:Sender:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=JoVN3RgqdN8Wml3cpdm7aO7/xhAdvX4ncygd6WEvNrM=; b=kdg9O+45jkfjCi0H8dyNk2Abns
	58Jeb3F0pU5A0gHWla/Rr3M/eAmeSxJMv3mLpx9tppF3MamNEO+k2rqGtCQue5JYa7EXFTHgkow4n
	Bg/IFwpyfwHmDeEmLoXGSmM4+uFhdSRwrp3Dq4bHvod2il+WbrEcEPMsfoo9ot0vSkbo=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1unwuR-0004NM-Mj;
	Mon, 18 Aug 2025 10:16:11 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <mbannister@janestreet.com>) id 1unwuQ-0004NC-Sh
 for openipmi-developer@lists.sourceforge.net;
 Mon, 18 Aug 2025 10:16:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=LWX1fFaX3nk2wvggKaPcoj2rrkWUWYuUPeC8X6HNxB0=; b=ktSHwPq/+oK3NA6NpppmHH1tZv
 n8ApY3+AEMoIgLAbdv+8Q87nsAHaIL08UP48xx/F0sC4i8QFgT94DlNmzpkM1cIdRI4S/Zx5NfWUi
 TpuKldVuCTEOXnUrubpbDsnVaLm+NkjX5Yp2gbYZmAWXElac4PEqfI6jg9xrwLS4EPGY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=LWX1fFaX3nk2wvggKaPcoj2rrkWUWYuUPeC8X6HNxB0=; b=K5pBTmaJj9zPgYrK2Kku3LOh5r
 u6pdJ757EjvKXAEYRitc+99mKQ0lO1tfa0X9ihTzK/8y+BTa1fZRC3iJoyesAFwm6ponTIlvYvsxv
 mczz6jmoD8TZ7g6depGm0yd+UVO3qvZZq6lDaV/nNdqAEJpkJuuub6T7VDK3w9rkj2W8=;
Received: from mxout1.mail.janestreet.com ([38.105.200.78])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1unwuM-0007EL-Sr for openipmi-developer@lists.sourceforge.net;
 Mon, 18 Aug 2025 10:16:10 +0000
Received: from mail-io1-f72.google.com ([209.85.166.72])
 by mxgoog2.mail.janestreet.com with esmtps (TLS1.3:TLS_AES_128_GCM_SHA256:128)
 (Exim 4.98.2) id 1unwuH-00000005KIh-1kV1
 for openipmi-developer@lists.sourceforge.net;
 Mon, 18 Aug 2025 06:16:01 -0400
Received: by mail-io1-f72.google.com with SMTP id
 ca18e2360f4ac-88432cc8949so408093339f.0
 for <openipmi-developer@lists.sourceforge.net>;
 Mon, 18 Aug 2025 03:16:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=janestreet.com; s=google; t=1755512161; x=1756116961;
 darn=lists.sourceforge.net; 
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=LWX1fFaX3nk2wvggKaPcoj2rrkWUWYuUPeC8X6HNxB0=;
 b=TMF3vlXlHHUjrkNk1Ms68bgOJenr69kFqoD/UfIVFr3g5u6401dnfO0wZwWQrlZ03n
 EofIrqaOscMYELSRQisuotKxYlALN9b10fjEm7slxmRLgtmvwLNerubyC7PNL+N96e+w
 NPwbMTIsYKY9cKdwg4NT031l7CYDj5GQ91sbc=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=janestreet.com;
 s=waixah; t=1755512161;
 bh=LWX1fFaX3nk2wvggKaPcoj2rrkWUWYuUPeC8X6HNxB0=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc;
 b=BAQfEPuXkSMNTOCCn7LpUI5Gc4cCQ9k3wbCeNnYxF3Fpun00wfjg+HM/R/kI31tLQ
 dMxm24qFD4ZR1XjGG5ofMYWnWwd2xRJaWeECe5cT71TfV7X4WmhEG9Wa2kjWO3jjuz
 ukGwBH0KTXif39o7/UM/JxSbXZO98OI/KNSDEKDchb/qlbO1oxtjeBZc/XAsXnI7Ty
 xPhjUuymQnzg1R8/wUBBil4p0qqfblnU7RSbunnEiqfF8vm8AWq8gf25ji4Zis59/u
 Ce/H1039DekQ6EwpXRh6B6mmjT2XRtoBpt3z7iajoP3SaLvXRLG6JA+LzaKl3kNRH3
 PJNJKFCQ6rVww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1755512161; x=1756116961;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=LWX1fFaX3nk2wvggKaPcoj2rrkWUWYuUPeC8X6HNxB0=;
 b=gdt3Fl2CaNcUIQ+WXMVTbPAl+r5nwuT/mHZMDIeS47ZZ5iss5+x4XRUrFiGihOnkRc
 BTj92b80/I6AN5ZetC2dpQxv8uSC0vMAjS4rJMMLuefX9fqZvB3fO6RRmk5Xn5d1vAFe
 ZoVyK0tbdxTpm9f6ywNGbBXcCkOQq+3JCmXRP8Q1rbkqqorCBMOytEb1rQm+YUkatH/z
 MuANwf381rYC6yDTySwwQV+ftRemMPR5lNImO5boicKO9EMXPJcrj7k9IM5QHoklGe7s
 +dUddy3ZzKjveTbo/BuxX2UD/fgqs126oCU5VssGWyAV0B/zQ+jicYBq3SyIs1h2AHoz
 B9zw==
X-Forwarded-Encrypted: i=1;
 AJvYcCWhZ0bmJKoDMf5e0/a/HWt6YgoS+mWMOaysWWJMotAPWf/xHy4fr4I0uVjlZxlWdrhn3S5WUJx/pRjEzf7xka2ZdCE=@lists.sourceforge.net
X-Gm-Message-State: AOJu0YwZn32c5Ke/Z27qK0b60cfL8BYod0cGWxjeDKBlRaiiFc42ts0Q
 W3y1p8MHbZ9D4AUFgeYsZhtzxba/P+HkKhJxEPVYahDYvIGxb6bR/AiIkw6TdMXJshnEZt/Bb7v
 RTCQ8Df4bxTz3H9H8QMRbbqJ8FOdYBvLfHfArMlho6qIxlJsAai7kbT2LXd6+2PLjNEoUgpKzD2
 1AOD5zgPzVzqMFU1kd/fHVbv13DK3ffbF9UViLjU5fMOSp8ho75CMnHag=
X-Gm-Gg: ASbGncssHNVLtsQ1dNBw2ppqaN6+6ISPHZwxvL7A3L509peYrNtMvNCgmwKFx4fI76Z
 odDF1jtcqnt8Jzi0nUjkXqg0XU4PwnfEWI1tTmH27C00p3lqD8VK3gMUwDN4GPH+GjnYu/oux3s
 bfxDh1Z+otV+lq2JVgPnCZ
X-Received: by 2002:a05:6602:6c1c:b0:875:d675:55f2 with SMTP id
 ca18e2360f4ac-8843e3cee5bmr2004107039f.7.1755512160627; 
 Mon, 18 Aug 2025 03:16:00 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF7FzQAOW9CqqhlLFM6zSQ02bKZHv2j3LboznSorZPIEOh/zLCYwL347dzo3fOTtq2pcVibbxYjdE0tKUtTyFU=
X-Received: by 2002:a05:6602:6c1c:b0:875:d675:55f2 with SMTP id
 ca18e2360f4ac-8843e3cee5bmr2004103639f.7.1755512160088; Mon, 18 Aug 2025
 03:16:00 -0700 (PDT)
MIME-Version: 1.0
References: <20250814135419.616256-1-corey@minyard.net>
 <CABpvmx_FO+MSJahsNRrv2KBfnb-Rib9FZa2f0w05MvZuwDhYOw@mail.gmail.com>
 <CABpvmx91CoVz8Tcui2j3CUSn=t4fSvCSRbYRWjZWZzSV+we_0w@mail.gmail.com>
 <aJ4mXfx_fJsK7YUk@mail.minyard.net>
In-Reply-To: <aJ4mXfx_fJsK7YUk@mail.minyard.net>
Date: Mon, 18 Aug 2025 11:15:49 +0100
X-Gm-Features: Ac12FXzwCKJD9yQk_tfskuhPDYZUHSbFmmjpu-Yk1y3HqVZgZ1IXcgDQfOg_zik
Message-ID: <CABpvmx8F-JYxgkWxmBsu3t3oEMhestpLGboS4eN3=F1QvC9_yw@mail.gmail.com>
To: corey@minyard.net
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  > Perfect, I'll queue it for the next kernel release. I can
 get it into > the current release if it's urgent. Thanks, that's great. Not
 urgent, we can apply the patch manually anyway. > The change that caused
 this was c608966f3f9c "ipmi: fix msg stack when > IPMI is disconnected" and
 it came in between 6.1 and 6.6. I'm adding > the author of that patch because
 this change may affec [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 HTML_MESSAGE           BODY: HTML included in message
X-Headers-End: 1unwuM-0007EL-Sr
Subject: Re: [Openipmi-developer] [TEST PATCH] ipmi:si: Delay when an error
 is discovered in error recovery
X-BeenThere: openipmi-developer@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: Developer list of OpenIPMI library and Linux driver
 <openipmi-developer.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/openipmi-developer>, 
 <mailto:openipmi-developer-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=openipmi-developer>
List-Post: <mailto:openipmi-developer@lists.sourceforge.net>
List-Help: <mailto:openipmi-developer-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/openipmi-developer>, 
 <mailto:openipmi-developer-request@lists.sourceforge.net?subject=subscribe>
From: Mark Bannister via Openipmi-developer
 <openipmi-developer@lists.sourceforge.net>
Reply-To: Mark Bannister <mbannister@janestreet.com>
Cc: openipmi-developer@lists.sourceforge.net,
 Zhang Yuchen <zhangyuchen.lcr@bytedance.com>
Content-Type: multipart/mixed; boundary="===============7536011445446291015=="
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

--===============7536011445446291015==
Content-Type: multipart/alternative; boundary="000000000000b389f9063ca10632"

--000000000000b389f9063ca10632
Content-Type: text/plain; charset="UTF-8"

> Perfect, I'll queue it for the next kernel release.  I can get it into
> the current release if it's urgent.

Thanks, that's great.  Not urgent, we can apply the patch manually anyway.

> The change that caused this was c608966f3f9c "ipmi: fix msg stack when
> IPMI is disconnected" and it came in between 6.1 and 6.6.  I'm adding
> the author of that patch because this change may affect that.
>
> In hindsight I think the fix that caused this is wrong.  I'm not sure
> how what the author said was happening could happen.  There's a limit
> of 100 messages per user.  I am inclined right now to revert that
> change.

So just checking with you what is most likely.  Are you going to add the
patch from https://sourceforge.net/p/openipmi/mailman/message/59220700/ and
not revert the patch for c608966f3f9c, or are you also going to revert that
patch?  A quick look myself over c608966f3f9c it wasn't immediately obvious
to me how it caused this problem and I would expect that the patch you
provided last week would be needed anyway?  The crucial part of your fix
seemed to me to be where you return from smi_event_handler after receiving
SI_SM_HOSED instead of 'goto restart'.  Although I admit I haven't looked
very hard at the message handler code.

Best regards
Mark

--000000000000b389f9063ca10632
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div id=3D"gmail-:4wk" class=3D"gmail-Am =
gmail-aiL gmail-aO9 gmail-Al editable gmail-LW-avf gmail-tS-tW gmail-tS-tY"=
 aria-label=3D"Message Body" role=3D"textbox" aria-multiline=3D"true" tabin=
dex=3D"1" style=3D"direction:ltr;min-height:85px" aria-controls=3D":4zh" ar=
ia-expanded=3D"false">&gt; Perfect, I&#39;ll queue it for the next kernel r=
elease.=C2=A0 I can get it into<br>&gt; the current release if it&#39;s urg=
ent.<div><br></div><div>Thanks, that&#39;s great.=C2=A0 Not urgent, we can =
apply the patch manually anyway.</div><div><br></div><div>&gt; The change t=
hat caused this was c608966f3f9c &quot;ipmi: fix msg stack when<br>&gt; IPM=
I is disconnected&quot; and it came in between 6.1 and 6.6.=C2=A0 I&#39;m a=
dding<br>&gt; the author of that patch because this change may affect that.=
<br>&gt;=C2=A0<br>&gt; In hindsight I think the fix that caused this is wro=
ng.=C2=A0 I&#39;m not sure<br>&gt; how what the author said was happening c=
ould happen.=C2=A0 There&#39;s a limit<br>&gt; of 100 messages per user.=C2=
=A0 I am inclined right now to revert that<br>&gt; change.</div><div><br></=
div><div>So just checking with you what is most likely.=C2=A0 Are you going=
 to add the patch from=C2=A0<a href=3D"https://sourceforge.net/p/openipmi/m=
ailman/message/59220700/">https://sourceforge.net/p/openipmi/mailman/messag=
e/59220700/</a> and not revert the patch for=C2=A0c608966f3f9c, or are you =
also going to revert that patch?=C2=A0 A quick=C2=A0look myself over c60896=
6f3f9c it wasn&#39;t immediately obvious to me how it caused this problem a=
nd I would expect that the patch you provided last week would be needed any=
way?=C2=A0 The crucial part of your fix seemed to me to be where you return=
 from smi_event_handler after receiving SI_SM_HOSED instead of &#39;goto re=
start&#39;.=C2=A0 Although I admit I haven&#39;t looked very hard at the me=
ssage handler code.</div><div><br></div><div>Best regards</div><div>Mark</d=
iv></div></div></div>

--000000000000b389f9063ca10632--


--===============7536011445446291015==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============7536011445446291015==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

--===============7536011445446291015==--

