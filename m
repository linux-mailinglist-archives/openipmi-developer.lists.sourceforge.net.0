Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 10F49B86352
	for <lists+openipmi-developer@lfdr.de>; Thu, 18 Sep 2025 19:31:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Type:Cc:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:
	From:In-Reply-To:References:MIME-Version:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=pq5r1PstPriIRXlk7k7YNU/4WY5SAGwoes4TShDFC2c=; b=LLWbMvdq3pVw7kIn/iI4WyQZiW
	KJ9eXMhG9G4t5bYVIstGt6fyArrxpN8HgnsWkOaFOAVuobg9kEWvVr5q7r1Z2RYQswl2GdEZV0jaw
	EEHxf3jq+AA2fR46XMTDpg0h2nJVEe85wIt1TmyuQiSg1V46q//ZBdRVpj8kBJSmwnwE=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1uzIT4-0003Ms-L3;
	Thu, 18 Sep 2025 17:30:50 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <poornachandumarneni@gmail.com>) id 1uzIT2-0003Mj-I6
 for openipmi-developer@lists.sourceforge.net;
 Thu, 18 Sep 2025 17:30:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=CTO5mTSlLa2e0PRwFxRWnZhzRdO5TWGFd6lRyulvo5I=; b=EPtdTMK0IRb3TyR+frc8dpXUJ7
 fpX/PrnGzwIulqLfXDbrNai8LVxVfrqrOAsFOZ7B7bSXRxhkYBg83GYZSkMUgg5Fs/YlBN/bssJUH
 fA7DhQW4hjK30IrlNDTAH+0BHMEe4ebGo2H5t7vMGZkjE3R0WHx46BUZXtRspkVuzbo8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=CTO5mTSlLa2e0PRwFxRWnZhzRdO5TWGFd6lRyulvo5I=; b=YgMSin6Qy5xaZnkU4VGY6ps+YZ
 qyAA0gYVKAzV13IfwfUAa0ZvDtB6L0l16cw1h8+88UVfij/hlU5zu/rbOj+l7Vz0cvVEW8rl+dMqc
 JwPecWs1DU5opMgfmoLzP0x8q3GUcLKYhHJRjS/JM9a+BdN4g0ZWUzepXl3QTeL/oRe0=;
Received: from mail-lf1-f43.google.com ([209.85.167.43])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1uzIT2-0005um-24 for openipmi-developer@lists.sourceforge.net;
 Thu, 18 Sep 2025 17:30:48 +0000
Received: by mail-lf1-f43.google.com with SMTP id
 2adb3069b0e04-55f7a34fb35so1196210e87.1
 for <openipmi-developer@lists.sourceforge.net>;
 Thu, 18 Sep 2025 10:30:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1758216641; x=1758821441; darn=lists.sourceforge.net;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=CTO5mTSlLa2e0PRwFxRWnZhzRdO5TWGFd6lRyulvo5I=;
 b=V8+LF7iP4EKWU8cZP0BtHCvROnGWSpFM7EgFyvbtCtpNksWzY2zEiPWg1RAzDpeU/+
 n3I/BrtTo2NOZvDl1SIhFa38cBXI0Qx5yKvQMhDhW0aHdlSRSgAy8EfDZjYAIbspP4tr
 JTQukd+hZbkGv6yeNc8PEeuV7Yqyq9c54mAVCUKyN4iGWyV8bPvJszmEiaJEh2L7pEGM
 CnwgLw1HWk/yHjeS94u9kklOwGty22/NW7l3h2Wy6xjNSP7h/nVADIBC/PF1INHzvcHq
 7k4SbT2CBT3CDHmF0HsWoLjxLtXuLF3HlA/3F5VdtcEYAmNBXHrwZNltfKP+njrdlshm
 eVbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1758216641; x=1758821441;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=CTO5mTSlLa2e0PRwFxRWnZhzRdO5TWGFd6lRyulvo5I=;
 b=AQOOyTKKNHeOpMo2Hl3DzRMomEUc7G7CG1awcMI71FRrtD0K+LSvshxBnzA64WZ3Fj
 WKvq5lyAtivyMo29GFjh9sjkBA80TxWSZ7+iiNxXOtRbDXa139FkCjR9EQKutL8hla8A
 +OQM7T4CjhqX/9fIOq/P98jbYGKhrkUqFtQuKPzksMkkZmIpJY5QKKz6vTTB6dxzTtsi
 q1XYXVNMOjK8z3I8HvodyG/Znyvnfocm6Sibqyt/qe85z0LE3oM2YNqgb6ebAV7B0ARm
 gpzGMSUDC8e5sZVXP5PdHNgA+oRZy6XCfJgiek1GnBzua714GWPT+zJ3+2wET/Je0azO
 5dhg==
X-Forwarded-Encrypted: i=1;
 AJvYcCUqSP+6EjT2HkEQiixupHIpEsOwSo1C0rIVUII9shB7FM7kyPkyAWEI6V6WfOqFD55K3U4vBiHEEo47+ZuFJRd/n34=@lists.sourceforge.net
X-Gm-Message-State: AOJu0Yx/3QtVgIMaRT/Qy32v24kAk26Z+9j2nY1PgqzYA2bVequLnYA3
 32oEVmuI/0mAjncW91F75j3c0ulAvTqsfrRVzLMyR0cWnDhHvFqkMm5P2618CAhZVBjDnpFg8dZ
 brEob23nVC/KD8kX3LteUpdqw3P8oQw==
X-Gm-Gg: ASbGncvHmzjtW2eJWepTgZphs6i0KBDnAm9IkLd5Iia27mm5impGY3une5pTdu/AVcy
 nccFbMHhyGIpsDKcppKZ38ClwxXb4+xd7ssTtB7bgza/dK67TD+ysxe3V5fpfYsx7HfFXrnh8jG
 M7iFGZXDYgHD91uNXa//Ai+wdt6KVdwjtpAfLZzr4ilYj1t7k4UxNX6thzf+hvM1Ig1BvwCp6wB
 imzvh7k5Tt39GgKLd+ndEPsgIuUx4dbb/t4vFcgafcrLW5O4033NnFRE2o=
X-Google-Smtp-Source: AGHT+IHI0QR59NsxYSzWNTzVKFYfVCMucPVMS8k8gpJ0ZEBGsUcEF1cjNghQZQOF54ZOR/8w4fhCayHgPY+66Y/qUCc=
X-Received: by 2002:a2e:9b43:0:b0:336:9427:3527 with SMTP id
 38308e7fff4ca-3641968adeamr844411fa.21.1758216640885; Thu, 18 Sep 2025
 10:30:40 -0700 (PDT)
MIME-Version: 1.0
References: <20250917220430.5815-1-Poornachandumarneni@gmail.com>
 <87wm5v7ltm.fsf@trenco.lwn.net>
In-Reply-To: <87wm5v7ltm.fsf@trenco.lwn.net>
From: Poorna Chandu Marneni <poornachandumarneni@gmail.com>
Date: Thu, 18 Sep 2025 23:00:29 +0530
X-Gm-Features: AS18NWA69ox07moDcD7KPS6cMuYIiLstzoWixCwOpP4KU3cjhlNHvxvIeb7y4Hk
Message-ID: <CAKK-ygiysLhTu_vofbNUFTwrJGjMn8zqcvbwrzOc9xbqijJK6w@mail.gmail.com>
To: Jonathan Corbet <corbet@lwn.net>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Jon,
 Thank you for applying the patch and for the feedback.
 I understand your point about churn and will look for more substantial
 improvements
 to the documentation and code in future contributions. 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 [poornachandumarneni(at)gmail.com]
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.43 listed in wl.mailspike.net]
 0.0 HTML_MESSAGE           BODY: HTML included in message
 0.0 HTML_FONT_LOW_CONTRAST BODY: HTML font color similar or identical to
 background
X-Headers-End: 1uzIT2-0005um-24
Subject: Re: [Openipmi-developer] [PATCH] docs: driver-api: fix spelling of
 "buses".
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
Cc: alexandre.belloni@bootlin.com, linux-doc@vger.kernel.org,
 linux-kbuild@vger.kernel.org, linux-kernel@vger.kernel.org, corey@minyard.net,
 sakari.ailus@linux.intel.com, skhan@linuxfoundation.org,
 linux-i3c@lists.infradead.org, mchehab@kernel.org,
 openipmi-developer@lists.sourceforge.net, linux-kernel-mentees@lists.linux.dev,
 linux-media@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============7399182640904961338=="
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

--===============7399182640904961338==
Content-Type: multipart/alternative; boundary="000000000000517a76063f16b686"

--000000000000517a76063f16b686
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Jon,

           Thank you for applying the patch and for the feedback. I
understand your point about churn and will look for more substantial
improvements to the documentation and code in future contributions.

Thanks again for your guidance.


Thanks again,

Poorna Chandu Marneni.



On Thu, 18 Sep 2025 at 10:13=E2=80=AFPM, Jonathan Corbet <corbet@lwn.net> w=
rote:

> Marneni PoornaChandu <poornachandumarneni@gmail.com> writes:
>
> > Replace incorrect plural form "busses" with "buses" in
> > multiple documentation files under "Documentation/driver-api".
> >
> > Signed-off-by: Marneni PoornaChandu <Poornachandumarneni@gmail.com>
> > ---
> >  Documentation/driver-api/device-io.rst             | 4 ++--
> >  Documentation/driver-api/driver-model/overview.rst | 2 +-
> >  Documentation/driver-api/driver-model/platform.rst | 2 +-
> >  Documentation/driver-api/eisa.rst                  | 6 +++---
> >  Documentation/driver-api/i3c/protocol.rst          | 4 ++--
> >  Documentation/driver-api/ipmi.rst                  | 4 ++--
> >  Documentation/driver-api/media/tx-rx.rst           | 4 ++--
> >  Documentation/driver-api/nvdimm/nvdimm.rst         | 2 +-
> >  Documentation/driver-api/pm/devices.rst            | 4 ++--
> >  Documentation/driver-api/scsi.rst                  | 4 ++--
> >  Documentation/driver-api/spi.rst                   | 2 +-
> >  Documentation/driver-api/usb/hotplug.rst           | 2 +-
> >  Documentation/driver-api/usb/usb.rst               | 4 ++--
> >  13 files changed, 22 insertions(+), 22 deletions(-)
>
> "Busses" is considered to be a legitimate spelling as well.  I have gone
> ahead and applied this in the hope that it will reduce the temptation
> for others to "fix" it, but this kind of change in general is a sort of
> churn that does not really help the kernel project.  Thanks for working
> to improve our documentation, but I do hope that you will find more
> useful improvements going forward.
>
> Thanks,
>
> jon
>

--000000000000517a76063f16b686
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><div><div style=3D"font-size:16px;font-style:normal;font-weight:400;le=
tter-spacing:normal;text-indent:0px;text-transform:none;white-space:normal;=
word-spacing:0px;text-decoration:none;background-color:rgba(0,0,0,0);border=
-color:rgb(0,0,0);color:rgb(0,0,0)"><p dir=3D"auto" style=3D"background-col=
or:rgba(0,0,0,0);border-color:rgb(0,0,0);color:rgb(0,0,0)">Hi Jon,</p><p di=
r=3D"auto" style=3D"background-color:rgba(0,0,0,0);border-color:rgb(0,0,0);=
color:rgb(0,0,0)">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Thank you for ap=
plying the patch and for the feedback. I understand your point about churn =
and will look for more substantial improvements to the documentation and co=
de in future contributions.</p><p dir=3D"auto" style=3D"background-color:rg=
ba(0,0,0,0);border-color:rgb(0,0,0);color:rgb(0,0,0)">Thanks again for your=
 guidance.</p><p dir=3D"auto" style=3D"background-color:rgba(0,0,0,0);borde=
r-color:rgb(0,0,0);color:rgb(0,0,0)"><br></p><p dir=3D"auto" style=3D"backg=
round-color:rgba(0,0,0,0);border-color:rgb(0,0,0);color:rgb(0,0,0)">Thanks =
again,</p><p dir=3D"auto" style=3D"background-color:rgba(0,0,0,0);border-co=
lor:rgb(0,0,0);color:rgb(0,0,0)">Poorna Chandu Marneni.</p></div><br></div>=
<br></div><div><br><div class=3D"gmail_quote gmail_quote_container"><div di=
r=3D"ltr" class=3D"gmail_attr">On Thu, 18 Sep 2025 at 10:13=E2=80=AFPM, Jon=
athan Corbet &lt;<a href=3D"mailto:corbet@lwn.net">corbet@lwn.net</a>&gt; w=
rote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0p=
x 0.8ex;border-left-width:1px;border-left-style:solid;padding-left:1ex;bord=
er-left-color:rgb(204,204,204)">Marneni PoornaChandu &lt;<a href=3D"mailto:=
poornachandumarneni@gmail.com" target=3D"_blank">poornachandumarneni@gmail.=
com</a>&gt; writes:<br>
<br>
&gt; Replace incorrect plural form &quot;busses&quot; with &quot;buses&quot=
; in<br>
&gt; multiple documentation files under &quot;Documentation/driver-api&quot=
;.<br>
&gt;<br>
&gt; Signed-off-by: Marneni PoornaChandu &lt;<a href=3D"mailto:Poornachandu=
marneni@gmail.com" target=3D"_blank">Poornachandumarneni@gmail.com</a>&gt;<=
br>
&gt; ---<br>
&gt;=C2=A0 Documentation/driver-api/device-io.rst=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0| 4 ++--<br>
&gt;=C2=A0 Documentation/driver-api/driver-model/overview.rst | 2 +-<br>
&gt;=C2=A0 Documentation/driver-api/driver-model/platform.rst | 2 +-<br>
&gt;=C2=A0 Documentation/driver-api/eisa.rst=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 | 6 +++---<br>
&gt;=C2=A0 Documentation/driver-api/i3c/protocol.rst=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 | 4 ++--<br>
&gt;=C2=A0 Documentation/driver-api/ipmi.rst=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 | 4 ++--<br>
&gt;=C2=A0 Documentation/driver-api/media/tx-rx.rst=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0| 4 ++--<br>
&gt;=C2=A0 Documentation/driver-api/nvdimm/nvdimm.rst=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0| 2 +-<br>
&gt;=C2=A0 Documentation/driver-api/pm/devices.rst=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 | 4 ++--<br>
&gt;=C2=A0 Documentation/driver-api/scsi.rst=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 | 4 ++--<br>
&gt;=C2=A0 Documentation/driver-api/spi.rst=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0| 2 +-<br>
&gt;=C2=A0 Documentation/driver-api/usb/hotplug.rst=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0| 2 +-<br>
&gt;=C2=A0 Documentation/driver-api/usb/usb.rst=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0| 4 ++--<br>
&gt;=C2=A0 13 files changed, 22 insertions(+), 22 deletions(-)<br>
<br>
&quot;Busses&quot; is considered to be a legitimate spelling as well.=C2=A0=
 I have gone<br>
ahead and applied this in the hope that it will reduce the temptation<br>
for others to &quot;fix&quot; it, but this kind of change in general is a s=
ort of<br>
churn that does not really help the kernel project.=C2=A0 Thanks for workin=
g<br>
to improve our documentation, but I do hope that you will find more<br>
useful improvements going forward.<br>
<br>
Thanks,<br>
<br>
jon<br>
</blockquote></div></div>

--000000000000517a76063f16b686--


--===============7399182640904961338==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============7399182640904961338==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

--===============7399182640904961338==--

