Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D810C4EA61
	for <lists+openipmi-developer@lfdr.de>; Tue, 11 Nov 2025 16:00:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Type:Cc:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:
	From:In-Reply-To:References:MIME-Version:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=peQ7wn3rKQR1t74CAO1PlN7gBii0rIeGc7ceJTQIB84=; b=Q57c6OHnG8/aCzGYwFlXRMQUF9
	PXs0Hi+XVkjKtnR1RC/G0uXZzd99hdMGlmLVD9BQes1RMfQotxDNh47J8CZD91OZg1POM0lgTjTvX
	MwwjPz0XcpXwpFXvs9D96cdJ2pM9u8d7y6NNblu8jFrVWDMKrO8DcTLT5zDVE6uCAYMA=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1vIpr4-0001hi-SL;
	Tue, 11 Nov 2025 15:00:22 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <corey@minyard.net>) id 1vIpr3-0001hI-Dg
 for openipmi-developer@lists.sourceforge.net;
 Tue, 11 Nov 2025 15:00:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=aB3Kna1Ydum3rSWq2Q4kNhk8LAGVHiOY3JIzqpUlVwM=; b=OzSffrBGJ6rSB1gROqmVRCJmZV
 +WBMxyRLC3Sn8q8gN5KqrmK5Yh0KXCUaHREO6WnTCJMhyPa628BU92PudmQRA0JczcsTAlqqoOs9o
 T/ZJvQHD5igWwmeU8jdejm/OZz9xOKl5oJI0h//zTz9vx9BqnjeGaWw92I3RNkZxHGE0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=aB3Kna1Ydum3rSWq2Q4kNhk8LAGVHiOY3JIzqpUlVwM=; b=YmXzthyXQmaSMoO3KyRHPSHl+b
 T7f7q4bFzUSd+x38ngVLxEohi8DlXjh3Sz76gEIwkD6E9N4PzdkbPKCDq2roOlEtQOPFSrFuCi3SM
 jfGbw017+mpCU66eF3dKuYAX6WJJwDA34iXYE/QjoaoeMstV5njfGpfIX8N6YXi1UjME=;
Received: from mail-wm1-f49.google.com ([209.85.128.49])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1vIpqv-0003t8-6v for openipmi-developer@lists.sourceforge.net;
 Tue, 11 Nov 2025 15:00:14 +0000
Received: by mail-wm1-f49.google.com with SMTP id
 5b1f17b1804b1-4775ae77516so50000945e9.1
 for <openipmi-developer@lists.sourceforge.net>;
 Tue, 11 Nov 2025 07:00:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=minyard-net.20230601.gappssmtp.com; s=20230601; t=1762873202; x=1763478002;
 darn=lists.sourceforge.net; 
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=aB3Kna1Ydum3rSWq2Q4kNhk8LAGVHiOY3JIzqpUlVwM=;
 b=UzJw3IFcKXWZvY4ms1hXpE4umk+FV+2jPL5JP19agBz0FN2QO2mQ6ExAPncsi0RHya
 ag4ceDHeUJid6jzFnBZWwve9AskELaXaQp583Bw2ClGUro89kyN06wfQLYtyFn5iUEoU
 uSHDQJIfXt1szHgBkVR4RCryP7wOqTRG01GjRsUN8eoJjHNNuoz0vzEwzT4J+mlifc0L
 JfsPO1gHbv7YOgZoAk2QW2l2W46ctsRYxLW+10J3wRHhQwDL+Jh5uE1dr1IJBaf9gbOI
 nrs7RIxQvdrGLZiROMXopxPstqhzhVzjm9JqSSO8uKFQdMIzhGDI3OTkHzXospx0BM27
 UBJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1762873202; x=1763478002;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=aB3Kna1Ydum3rSWq2Q4kNhk8LAGVHiOY3JIzqpUlVwM=;
 b=v/2fJ5GHAS2MnWABnzMsifP6KQJvgOy1InR7XbC6oG/qLzjlBJiFT2L8TFs1cNP7GB
 AdqrFlARDRm/IQiQIRVNlPXmaiiHze58Z53w99lIZlFDdssLw/D9SGlDWgJhA8jBpqAs
 Bv+DsKQMCgDQAAleKa+P42bpyqsivp7TK0EbyUz2SpNl/zjeQYu2udxl5+f81KGHNa1p
 fJ6+dx5VSvECqjJSA5HtJfhpBvWBgYK7C2xuHj3FUSrlImhoROd0P8ff/S2hI2aHzcbG
 wxXNOjlQBEW/XIM8o9MtiymvfHBdHMHtulKwV8mmPcqf1DwyycmNRvQCO+/NJQZx/sTQ
 ruLQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCWiDRqRHntEV7ENoonMER9nr7xa+VumrECgmbZz0zkdRAB2oIQzwm8ag12K/30/E+L+Bm7VE9jyDeFzOeRsrf6nLhA=@lists.sourceforge.net
X-Gm-Message-State: AOJu0YxxwG0l0/ewmEr6oxzpoj4NyFXMF2jiWbkgi/DEdsDurf+ek2lj
 8emwDZBuQfcwIka4HpCssDLrqQMzfbX3XckoOAtMx14cY6LSivx1GlgkjFsiq3AkgDLSAtxdbFu
 kXMOZRk5FnUPQLrbGpsbmtJnuML7dKwyPmcAZetnJ7nMY8tJrfzmFjmw=
X-Gm-Gg: ASbGncuFl2flXpU2i4XgRpxMaGEZyjxK6YbasGH6lBaKR2vKjlenPPLE3nnXqyu4YOZ
 J3xM6RD85Z4keNUJUUBVUr4GTI0+woBPfxdL3Ikm+S2IOzCXvktcetmpsYG4gVr8Frj3fKUvG8k
 /KI939xlxn2OCgw/6XrIGsEvwH5SFEmksQoNlXrKgWFOwgN+SDzBL+RGW9Pftkh40gXClHIR8Qv
 fZvZ8v/PIjNsxPis8pkdlCw2Kl6BI0ZBC9NvCsnrHrTbQLYkX3+R+t3wPr7mNyx3aIklQ==
X-Google-Smtp-Source: AGHT+IHIkpA6rhiYIBJPGXbu43mtrXsVXRAjUn5Tnc/nVn4XCQWhRjYlEu/X5WxF0zlqRt3mYY1fmThRtTARr/9+XVU=
X-Received: by 2002:a05:6512:10d2:b0:594:2db8:312b with SMTP id
 2adb3069b0e04-5945f1465c4mr3726443e87.7.1762871436263; Tue, 11 Nov 2025
 06:30:36 -0800 (PST)
MIME-Version: 1.0
References: <20251110184727.666591-1-andriy.shevchenko@linux.intel.com>
 <20251110184727.666591-13-andriy.shevchenko@linux.intel.com>
 <pvjnjwm25ogu7khrpg5ttxylwnxazwxxb4jpvxhw7ysvqzkkpa@ucekjrrppaqm>
In-Reply-To: <pvjnjwm25ogu7khrpg5ttxylwnxazwxxb4jpvxhw7ysvqzkkpa@ucekjrrppaqm>
From: Corey Minyard <corey@minyard.net>
Date: Tue, 11 Nov 2025 06:30:24 -0800
X-Gm-Features: AWmQ_bmtZ_NzCjBDc-E_88i-zoQ3qkiy8-YjkQobPCCDd_5SvJDnh5UOEsI6sqU
Message-ID: <CAB9gMfrr5ReWD6EzGLpwnubnkRJg-VX0vpnPn-kuXsaYGFEAMg@mail.gmail.com>
To: Sergey Senozhatsky <senozhatsky@chromium.org>
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  No, it's not really important,
 and it's better to use a standardized
 output. Thanks for pointing this out, though. -corey On Tue, Nov 11, 2025
 at 12:08 AM Sergey Senozhatsky < senozhatsky@chromium.org> wrote: 
 Content analysis details:   (0.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.49 listed in wl.mailspike.net]
 0.0 HTML_MESSAGE           BODY: HTML included in message
X-Headers-End: 1vIpqv-0003t8-6v
Subject: Re: [Openipmi-developer] [PATCH v1 12/23] ipmi: Switch to use %ptSp
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
Cc: Andrew Lunn <andrew@lunn.ch>, Takashi Iwai <tiwai@suse.de>,
 dri-devel@lists.freedesktop.org, Jaroslav Kysela <perex@perex.cz>,
 Marijn Suijten <marijn.suijten@somainline.org>,
 Alexander Gordeev <agordeev@linux.ibm.com>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
 Matthew Brost <matthew.brost@intel.com>,
 Max Kellermann <max.kellermann@ionos.com>, ceph-devel@vger.kernel.org,
 Christian Borntraeger <borntraeger@linux.ibm.com>,
 Petr Mladek <pmladek@suse.com>, Lucas De Marchi <lucas.demarchi@intel.com>,
 linux-sound@vger.kernel.org, Stefan Haberland <sth@linux.ibm.com>,
 Rob Clark <robin.clark@oss.qualcomm.com>, Sean Paul <sean@poorly.run>,
 Vadim Fedorenko <vadim.fedorenko@linux.dev>,
 Dmitry Baryshkov <lumag@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Sven Schnelle <svens@linux.ibm.com>, Alex Deucher <alexander.deucher@amd.com>,
 Vitaly Lifshits <vitaly.lifshits@intel.com>,
 Andrew Morton <akpm@linux-foundation.org>, Vladimir Oltean <olteanv@gmail.com>,
 freedreno@lists.freedesktop.org, Jan Hoeppner <hoeppner@linux.ibm.com>,
 linux-doc@vger.kernel.org, Gustavo Padovan <gustavo@padovan.org>,
 "James E.J. Bottomley" <James.Bottomley@hansenpartnership.com>,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Simona Vetter <simona@ffwll.ch>, linux-s390@vger.kernel.org,
 Calvin Owens <calvin@wbinvd.org>, Richard Cochran <richardcochran@gmail.com>,
 linux-media@vger.kernel.org, Kishon Vijay Abraham I <kishon@kernel.org>,
 Satish Kharat <satishkh@cisco.com>, Vasily Gorbik <gor@linux.ibm.com>,
 linux-arm-msm@vger.kernel.org, Maxime Ripard <mripard@kernel.org>,
 linaro-mm-sig@lists.linaro.org, Casey Schaufler <casey@schaufler-ca.com>,
 Bjorn Helgaas <bhelgaas@google.com>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 Ulf Hansson <ulf.hansson@linaro.org>, linux-pci@vger.kernel.org,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 linux-trace-kernel@vger.kernel.org, Xiubo Li <xiubli@redhat.com>,
 Jonathan Corbet <corbet@lwn.net>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, linux-staging@lists.linux.dev,
 amd-gfx@lists.freedesktop.org, Karan Tilak Kumar <kartilak@cisco.com>,
 Ilya Dryomov <idryomov@gmail.com>, Paolo Abeni <pabeni@redhat.com>,
 Konrad Dybcio <konradybcio@kernel.org>, Steven Rostedt <rostedt@goodmis.org>,
 Mathieu Desnoyers <mathieu.desnoyers@efficios.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 openipmi-developer@lists.sourceforge.net,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rodolfo Giometti <giometti@enneenne.com>,
 "Martin K. Petersen" <martin.petersen@oracle.com>, linux-mmc@vger.kernel.org,
 Sesidhar Baddela <sebaddel@cisco.com>, Sagi Maimon <maimon.sagi@gmail.com>,
 Jonathan Lemon <jonathan.lemon@gmail.com>,
 "David S. Miller" <davem@davemloft.net>, Niklas Cassel <cassel@kernel.org>,
 David Airlie <airlied@gmail.com>,
 Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>,
 linux-scsi@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 Jakub Kicinski <kuba@kernel.org>, Masami Hiramatsu <mhiramat@kernel.org>,
 =?UTF-8?Q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 "Dr. David Alan Gilbert" <linux@treblig.org>,
 Manivannan Sadhasivam <mani@kernel.org>, Heiko Carstens <hca@linux.ibm.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Abhinav Kumar <abhinav.kumar@linux.dev>, Hans Verkuil <hverkuil@kernel.org>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 intel-xe@lists.freedesktop.org,
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, netdev@vger.kernel.org,
 Takashi Iwai <tiwai@suse.com>, Jessica Zhang <jesszhan0024@gmail.com>,
 Thomas Zimmermann <tzimmermann@suse.de>
Content-Type: multipart/mixed; boundary="===============3410389276649249719=="
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

--===============3410389276649249719==
Content-Type: multipart/alternative; boundary="000000000000be4f5a0643527dff"

--000000000000be4f5a0643527dff
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

No, it's not really important, and it's better to use a standardized
output.  Thanks for pointing this out, though.

-corey

On Tue, Nov 11, 2025 at 12:08=E2=80=AFAM Sergey Senozhatsky <
senozhatsky@chromium.org> wrote:

> On (25/11/10 19:40), Andy Shevchenko wrote:
> [..]
> > +     dev_dbg(smi_info->io.dev, "**%s: %ptSp\n", msg, &t);
>
> Strictly speaking, this is not exactly equivalent to %lld.%9.9ld
> or %lld.%6.6ld but I don't know if that's of any importance.
>
>

--000000000000be4f5a0643527dff
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">No, it&#39;s not really important, and it&#39;s better to =
use a standardized output.=C2=A0 Thanks for pointing this out, though.<div>=
<br></div><div>-corey</div></div><br><div class=3D"gmail_quote gmail_quote_=
container"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Nov 11, 2025 at 12=
:08=E2=80=AFAM Sergey Senozhatsky &lt;<a href=3D"mailto:senozhatsky@chromiu=
m.org">senozhatsky@chromium.org</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex">On (25/11/10 19:40), Andy Shevchenko wrote=
:<br>
[..]<br>
&gt; +=C2=A0 =C2=A0 =C2=A0dev_dbg(smi_info-&gt;<a href=3D"http://io.dev" re=
l=3D"noreferrer" target=3D"_blank">io.dev</a>, &quot;**%s: %ptSp\n&quot;, m=
sg, &amp;t);<br>
<br>
Strictly speaking, this is not exactly equivalent to %lld.%9.9ld<br>
or %lld.%6.6ld but I don&#39;t know if that&#39;s of any importance.<br>
<br>
</blockquote></div>

--000000000000be4f5a0643527dff--


--===============3410389276649249719==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============3410389276649249719==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

--===============3410389276649249719==--

