Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DC8771CE344
	for <lists+openipmi-developer@lfdr.de>; Mon, 11 May 2020 20:54:42 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1jYDZY-0002dl-SC; Mon, 11 May 2020 18:54:40 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <stuart.w.hayes@gmail.com>) id 1jYDZX-0002dM-84
 for openipmi-developer@lists.sourceforge.net; Mon, 11 May 2020 18:54:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=egXLDJZyXjwRHhW0j3PEbClQa6GRbl1VYa2WW0pLeh8=; b=ZACc76v3OYiCWAiB+hyCkJD0C1
 jhNA9hDXgXTGGOGJSixE5h42JH1/w9InmD/0tTIfOdMtc+vIHkmqESf5sW81W10MmF8yWPEwA79mZ
 /AMgLgBFdOol6gjElbZUePGiwDU1b7kXyTz5gi9QkGcN6wOAv9NkrwjhzcRAsH8eGXWI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=egXLDJZyXjwRHhW0j3PEbClQa6GRbl1VYa2WW0pLeh8=; b=Rs3NSGEWL5z683lc1bKraPIqh3
 dTzzJbTNiTw05Z8WigMIPP14HhFxm3Abd26rDzWarMLqJFgaSQSqwZKgorQnVHaEPa5lO5S//BQq5
 fw4BQIj3GuxleJ2T9qF5Cfx2VUR+sHyrWyTybqVQqCVBzhQLOk1V4LDwsyNONrYk9FVY=;
Received: from mail-qv1-f66.google.com ([209.85.219.66])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1jYDZV-001kHT-Rz
 for openipmi-developer@lists.sourceforge.net; Mon, 11 May 2020 18:54:39 +0000
Received: by mail-qv1-f66.google.com with SMTP id x13so3175782qvr.2
 for <openipmi-developer@lists.sourceforge.net>;
 Mon, 11 May 2020 11:54:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=egXLDJZyXjwRHhW0j3PEbClQa6GRbl1VYa2WW0pLeh8=;
 b=lhzR8OGiQm/jjTUHfDYyXx0/fuZL3veKehp9WFMnK5HXlqfOantUdBQoePeCbnWTbo
 AUN1uFxHSn4nN/xmTk2U6xp0l6mKXLjBMxus6Q0doylXpFay62GL63HaPMfYx9EUQ4v5
 EoD/ZmhyU7UiFiihAzJxruDUN8sKPsFowLZ8WJqyjx4/NT0XpEvMxZ+weloFhrIxG5pe
 fGjjj52MbJHZ0TNKWSXgYR4hYhXSJh8vng1SxyGNGcGTiSCeopL2+gvMf6xxupztCXy9
 4qD08BpKpcBH+P5e5C/pR2DAcloA5MS2Ag5jueuEP6uANIhiiywlOykVxRsMgxMdBSZp
 Uw3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=egXLDJZyXjwRHhW0j3PEbClQa6GRbl1VYa2WW0pLeh8=;
 b=N2Rht0KVxT1BhH/UnzQHLv/zolhWhI+T4bx9QEED1/ZXf3GlsV8ZYSimlTmvu4lQ15
 mLJykAngAJgj+nFGuODavS7ktINqJuzLS5XZDvRpPc0nKfh5VuBzgwR5T4KdfflTiuMo
 3/hXf4eqNdDDFAh2vPCkipYGwd+OEW3Ex4sU6gaqXZRIVSXgMhNqTDerlMV7zB2FyuJC
 gtx1WIlKB0BYoWL3SjB6/w5HL2YVUhRMmQPEsETwrjCwSDIBerejilfNCvbpczc+VE5a
 FK3YAfnP72D42AslI1kIOe4+M3UWjJViBgKARA7IQ5tFJGh58B3tfxxyLvmpJ22R8lul
 13fw==
X-Gm-Message-State: AGi0PuZ/oAhPag4kYrTEmSVpEcf0MpD/uPnZUCZGFqSlzh1G02ZhERVc
 0pikbq9uY/c75lo4GGAgPf/aeOxqOefRY99LK3ORPWd1
X-Google-Smtp-Source: APiQypLxhItEk3FXtqAckJwaMhlP8ZHHa9LPiXE8BynQAmE7brjbA9yOf0EwbAydBPlLC0cUmNBufEmCcyGHFvFrBeU=
X-Received: by 2002:ad4:4a8b:: with SMTP id h11mr6673672qvx.232.1589223271785; 
 Mon, 11 May 2020 11:54:31 -0700 (PDT)
MIME-Version: 1.0
References: <20200311192409.59923-1-stuart.w.hayes@gmail.com>
In-Reply-To: <20200311192409.59923-1-stuart.w.hayes@gmail.com>
From: Stuart Hayes <stuart.w.hayes@gmail.com>
Date: Mon, 11 May 2020 13:54:19 -0500
Message-ID: <CAL5oW00pVoLPMJZymaVKsa=yi=TQ+Py3RX=WKnS3t+WNGZiPww@mail.gmail.com>
To: Corey Minyard <minyard@acm.org>
X-Spam-Score: 0.9 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (stuart.w.hayes[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.219.66 listed in list.dnswl.org]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: io.dev]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.219.66 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1jYDZV-001kHT-Rz
Subject: Re: [Openipmi-developer] [PATCH] ipmi_si: Load acpi_ipmi when ACPI
 IPMI interface added
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
Cc: openipmi-developer@lists.sourceforge.net
Content-Type: multipart/mixed; boundary="===============5827593918039820370=="
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

--===============5827593918039820370==
Content-Type: multipart/alternative; boundary="000000000000956c6e05a563e060"

--000000000000956c6e05a563e060
Content-Type: text/plain; charset="UTF-8"

On Wed, Mar 11, 2020 at 2:24 PM Stuart Hayes <stuart.w.hayes@gmail.com>
wrote:

> Try to load acpi_ipmi when an ACPI IPMI interface is added, so that the
> ACPI IPMI OpRegion is accessible.
>
> Signed-off-by: Stuart Hayes <stuart.w.hayes@gmail.com>
> ---
>  drivers/char/ipmi/ipmi_si_platform.c | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/drivers/char/ipmi/ipmi_si_platform.c
> b/drivers/char/ipmi/ipmi_si_platform.c
> index c78127ccbc0d..2fdfebf0ebc8 100644
> --- a/drivers/char/ipmi/ipmi_si_platform.c
> +++ b/drivers/char/ipmi/ipmi_si_platform.c
> @@ -393,6 +393,8 @@ static int acpi_ipmi_probe(struct platform_device
> *pdev)
>         dev_info(io.dev, "%pR regsize %d spacing %d irq %d\n",
>                  res, io.regsize, io.regspacing, io.irq);
>
> +       request_module("acpi_ipmi");
> +
>         return ipmi_si_add_smi(&io);
>
>  err_free:
> --
> 2.18.1
>
>
Ping?  No rush, I just didn't want it to fall through the cracks and be
forgotten.  Thanks!

--000000000000956c6e05a563e060
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Wed, Mar 11, 2020 at 2:24 PM Stuar=
t Hayes &lt;<a href=3D"mailto:stuart.w.hayes@gmail.com">stuart.w.hayes@gmai=
l.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:=
1ex">Try to load acpi_ipmi when an ACPI IPMI interface is added, so that th=
e<br>
ACPI IPMI OpRegion is accessible.<br>
<br>
Signed-off-by: Stuart Hayes &lt;<a href=3D"mailto:stuart.w.hayes@gmail.com"=
 target=3D"_blank">stuart.w.hayes@gmail.com</a>&gt;<br>
---<br>
=C2=A0drivers/char/ipmi/ipmi_si_platform.c | 2 ++<br>
=C2=A01 file changed, 2 insertions(+)<br>
<br>
diff --git a/drivers/char/ipmi/ipmi_si_platform.c b/drivers/char/ipmi/ipmi_=
si_platform.c<br>
index c78127ccbc0d..2fdfebf0ebc8 100644<br>
--- a/drivers/char/ipmi/ipmi_si_platform.c<br>
+++ b/drivers/char/ipmi/ipmi_si_platform.c<br>
@@ -393,6 +393,8 @@ static int acpi_ipmi_probe(struct platform_device *pdev=
)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 dev_info(<a href=3D"http://io.dev" rel=3D"noref=
errer" target=3D"_blank">io.dev</a>, &quot;%pR regsize %d spacing %d irq %d=
\n&quot;,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0res, io.regsi=
ze, io.regspacing, io.irq);<br>
<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0request_module(&quot;acpi_ipmi&quot;);<br>
+<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 return ipmi_si_add_smi(&amp;io);<br>
<br>
=C2=A0err_free:<br>
-- <br>
2.18.1<br>
<br></blockquote><div><br></div><div>Ping?=C2=A0 No rush, I just didn&#39;t=
 want it to fall through the cracks and be forgotten.=C2=A0 Thanks!</div><d=
iv>=C2=A0</div></div></div>

--000000000000956c6e05a563e060--


--===============5827593918039820370==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============5827593918039820370==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

--===============5827593918039820370==--

