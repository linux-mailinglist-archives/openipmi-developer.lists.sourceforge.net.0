Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 370A4352BDC
	for <lists+openipmi-developer@lfdr.de>; Fri,  2 Apr 2021 17:47:29 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1lSM17-0006Fw-Gh; Fri, 02 Apr 2021 15:47:25 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <andy.shevchenko@gmail.com>) id 1lSL2A-0000bq-AN
 for openipmi-developer@lists.sourceforge.net; Fri, 02 Apr 2021 14:44:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 References:In-Reply-To:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=myrU00cnpEa++I/YwuZzRQ3Hl0WEqeeShx+eSYKz+xM=; b=QwMfBu8f5St5eeLhmEl++j7wzg
 pbHJxOkVSR13m2K2AMLCSc9YO24o5bYkRXTMpgRD54ebP0aVDWXoIYAWbzagscNiSiuq8lxwXI5hn
 BGggXzfXMkZN2kUAgLNEpDVINoERYG5ajHFI5LTpTYtV8aNCKJ2NYrwnBNdAjBMB+Ox8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:References:In-Reply-To:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=myrU00cnpEa++I/YwuZzRQ3Hl0WEqeeShx+eSYKz+xM=; b=IuxwBu0qCTcMXfwWVgBA0RN0AF
 RvXHcqijNoqA/29YvDNwk2+JvX8gewjQ2b39jB6PdR2LJ4+Y+Tdl2Kvwdxs4XdgSvLNGm2vPQEQP/
 KvwEqjMS2kMUa3l8eoaPpTMd9J4T4dyUTV/cZBlrH2BqJLl60go02iijdcEjtZY3Myyc=;
Received: from mail-pg1-f173.google.com ([209.85.215.173])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1lSKoy-0077Tl-UA
 for openipmi-developer@lists.sourceforge.net; Fri, 02 Apr 2021 14:31:09 +0000
Received: by mail-pg1-f173.google.com with SMTP id i6so3687067pgs.1
 for <openipmi-developer@lists.sourceforge.net>;
 Fri, 02 Apr 2021 07:30:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:in-reply-to:references:from:date:message-id:subject:to
 :cc; bh=myrU00cnpEa++I/YwuZzRQ3Hl0WEqeeShx+eSYKz+xM=;
 b=OW7ssR5zx0kyjuQR43bB0jYrP5/BWYT4+Msy9hXhQlEUpbj9hrcivvY/LmJUSPU6Oe
 Al9EvbV4R8zYhBIIYL8L5wFUvOYLFgSFNgNgbs4x8K+1NjnFlcsfOW1PBDZ0r1ShdKMv
 vT+aPbB5Jxlbe7/1A30t0tA6VOXLuPvRn/PhlniPDqRTcZ7tEMfqkGaC568DJMntXWrr
 ZesK44XNy7y7dqFCHWfjgcPgjcX9R6C3idIgFofnSXFcSipsfh4OnwyKVgQlEmv8Nydc
 Lw01tcRxmrJ/VUQSwQw2De5s/0vY+GoP8BWFrg++9xqK6So9INmi+CpLiuvDfuFYAETI
 ynKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:in-reply-to:references:from:date
 :message-id:subject:to:cc;
 bh=myrU00cnpEa++I/YwuZzRQ3Hl0WEqeeShx+eSYKz+xM=;
 b=oij65t+1jOeIkYMO2BlDotNMkUnXytAXO/YhIn+jKaWAEslvsmlkbZ92YMu7oPGiuD
 cCB8oK5Mkl3dkq1wiffhYT02qFM4YHWZ48dAzZuOZi6HkdZJA5Lg1XMKWyeex7VhJv9S
 NXTJH5jL7q07gVu1VXuED2PzHSv8IMZYaQiFmMyVWKpVNikinFVRWkLosLzNcKLnRJoe
 8Uzgq+El5Z6VeuumhxF886JuZ7IbHK2Dy2oLWaF+m3vpALABZhNrNQB0g7ArXGYl/zch
 fpnhgZ6DCJx4R8wIOU/BAKXt1Sm7DCOPqZG9/9RUjP+oQ4itPswN7Dhl5brhBixSlvQJ
 cGGg==
X-Gm-Message-State: AOAM532sKDyyDgNeY1OOy65PTAicnyQC8b36wG9ve8zBRl9TnUWhk++H
 encCwKp3uZVNkLP5WtBqwVvUI0Df1IHaUKkdl60=
X-Google-Smtp-Source: ABdhPJyB8RGqDVP950wmbiRsDOaGKxi0uELGD9TfxE1gJ/8Sf9kMX0HeD3z9cJbZX8iIpv5p/kektNobTwPMHYkmAmU=
X-Received: by 2002:a62:7c43:0:b029:1ef:20ce:ba36 with SMTP id
 x64-20020a627c430000b02901ef20ceba36mr12578259pfc.40.1617373843297; Fri, 02
 Apr 2021 07:30:43 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a17:90a:7184:0:0:0:0 with HTTP; Fri, 2 Apr 2021 07:30:42
 -0700 (PDT)
In-Reply-To: <20210402135349.GT507977@minyard.net>
References: <20210330181649.66496-1-andriy.shevchenko@linux.intel.com>
 <20210330181649.66496-6-andriy.shevchenko@linux.intel.com>
 <20210402135349.GT507977@minyard.net>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Fri, 2 Apr 2021 17:30:42 +0300
Message-ID: <CAHp75Vd3GLpzHBzzHfOkRrotwS6hDH8PfoFiWBXMxE_0+uwD+A@mail.gmail.com>
To: "minyard@acm.org" <minyard@acm.org>
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (andy.shevchenko[at]gmail.com)
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: intel.com]
 0.0 DKIM_ADSP_CUSTOM_MED   No valid author signature, adsp_override is
 CUSTOM_MED
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 TIME_LIMIT_EXCEEDED    Exceeded time limit / deadline
X-Headers-End: 1lSKoy-0077Tl-UA
X-Mailman-Approved-At: Fri, 02 Apr 2021 15:47:24 +0000
Subject: Re: [Openipmi-developer] [PATCH v1 06/10] ipmi_si: Reuse si_to_str
 array in ipmi_hardcode_init_one()
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
Cc: Corey Minyard <cminyard@mvista.com>,
 "openipmi-developer@lists.sourceforge.net"
 <openipmi-developer@lists.sourceforge.net>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: multipart/mixed; boundary="===============7196303851649976007=="
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

--===============7196303851649976007==
Content-Type: multipart/alternative; boundary="0000000000006619c505befe319b"

--0000000000006619c505befe319b
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Friday, April 2, 2021, Corey Minyard <minyard@acm.org> wrote:

> On Tue, Mar 30, 2021 at 09:16:45PM +0300, Andy Shevchenko wrote:
> > Instead of making the comparison one by one, reuse si_to_str array
> > in ipmi_hardcode_init_one() in conjunction with match_string() API.
> >
> > Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
> > ---
> >  drivers/char/ipmi/ipmi_si.h          |  3 +++
> >  drivers/char/ipmi/ipmi_si_hardcode.c | 23 +++++++++--------------
> >  drivers/char/ipmi/ipmi_si_intf.c     |  2 --
> >  3 files changed, 12 insertions(+), 16 deletions(-)
> >
> > diff --git a/drivers/char/ipmi/ipmi_si.h b/drivers/char/ipmi/ipmi_si.h
> > index bac0ff86e48e..fd3167d1e1e9 100644
> > --- a/drivers/char/ipmi/ipmi_si.h
> > +++ b/drivers/char/ipmi/ipmi_si.h
> > @@ -22,6 +22,9 @@ enum si_type {
> >       SI_TYPE_INVALID, SI_KCS, SI_SMIC, SI_BT
> >  };
> >
> > +/* 'invalid' to allow a firmware-specified interface to be disabled */
> > +static __maybe_unused const char *const si_to_str[] =3D { "invalid",
> "kcs", "smic", "bt" };
>
> Can we just make this non-static and leave the definition where it is?
> That would save a little space and wouldn't affect performance at all.
>
>

We can=E2=80=99t. In such case we must export two symbols, including the si=
ze of an
array. I prefer to have it in the header. Another possibility is to add a
terminator to the array and adapt respective code. But still we will need
to export one symbol. I haven=E2=80=99t checked if this is simply local exp=
ort, or
modules included.


> -corey
>
> > +
> >  enum ipmi_addr_space {
> >       IPMI_IO_ADDR_SPACE, IPMI_MEM_ADDR_SPACE
> >  };
> > diff --git a/drivers/char/ipmi/ipmi_si_hardcode.c
> b/drivers/char/ipmi/ipmi_si_hardcode.c
> > index f6ece7569504..cf3797523469 100644
> > --- a/drivers/char/ipmi/ipmi_si_hardcode.c
> > +++ b/drivers/char/ipmi/ipmi_si_hardcode.c
> > @@ -80,26 +80,21 @@ static void __init ipmi_hardcode_init_one(const cha=
r
> *si_type_str,
> >                                         enum ipmi_addr_space addr_space=
)
> >  {
> >       struct ipmi_plat_data p;
> > +     int t;
> >
> >       memset(&p, 0, sizeof(p));
> >
> >       p.iftype =3D IPMI_PLAT_IF_SI;
> > -     if (!si_type_str || !*si_type_str || strcmp(si_type_str, "kcs") =
=3D=3D
> 0) {
> > +     if (!si_type_str || !*si_type_str) {
> >               p.type =3D SI_KCS;
> > -     } else if (strcmp(si_type_str, "smic") =3D=3D 0) {
> > -             p.type =3D SI_SMIC;
> > -     } else if (strcmp(si_type_str, "bt") =3D=3D 0) {
> > -             p.type =3D SI_BT;
> > -     } else if (strcmp(si_type_str, "invalid") =3D=3D 0) {
> > -             /*
> > -              * Allow a firmware-specified interface to be
> > -              * disabled.
> > -              */
> > -             p.type =3D SI_TYPE_INVALID;
> >       } else {
> > -             pr_warn("Interface type specified for interface %d, was
> invalid: %s\n",
> > -                     i, si_type_str);
> > -             return;
> > +             t =3D match_string(si_to_str, ARRAY_SIZE(si_to_str),
> si_type_str);
> > +             if (t < 0) {
> > +                     pr_warn("Interface type specified for interface
> %d, was invalid: %s\n",
> > +                             i, si_type_str);
> > +                     return;
> > +             }
> > +             p.type =3D t;
> >       }
> >
> >       p.regsize =3D regsizes[i];
> > diff --git a/drivers/char/ipmi/ipmi_si_intf.c
> b/drivers/char/ipmi/ipmi_si_intf.c
> > index be41a473e3c2..ff448098f185 100644
> > --- a/drivers/char/ipmi/ipmi_si_intf.c
> > +++ b/drivers/char/ipmi/ipmi_si_intf.c
> > @@ -70,8 +70,6 @@ enum si_intf_state {
> >  #define IPMI_BT_INTMASK_CLEAR_IRQ_BIT        2
> >  #define IPMI_BT_INTMASK_ENABLE_IRQ_BIT       1
> >
> > -static const char * const si_to_str[] =3D { "invalid", "kcs", "smic",
> "bt" };
> > -
> >  static bool initialized;
> >
> >  /*
> > --
> > 2.30.2
> >
>


--=20
With Best Regards,
Andy Shevchenko

--0000000000006619c505befe319b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<br><br>On Friday, April 2, 2021, Corey Minyard &lt;<a href=3D"mailto:minya=
rd@acm.org">minyard@acm.org</a>&gt; wrote:<br><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex=
">On Tue, Mar 30, 2021 at 09:16:45PM +0300, Andy Shevchenko wrote:<br>
&gt; Instead of making the comparison one by one, reuse si_to_str array<br>
&gt; in ipmi_hardcode_init_one() in conjunction with match_string() API.<br=
>
&gt; <br>
&gt; Signed-off-by: Andy Shevchenko &lt;<a href=3D"mailto:andriy.shevchenko=
@linux.intel.com">andriy.shevchenko@linux.<wbr>intel.com</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 drivers/char/ipmi/ipmi_si.h=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 |=
=C2=A0 3 +++<br>
&gt;=C2=A0 drivers/char/ipmi/ipmi_si_<wbr>hardcode.c | 23 +++++++++--------=
------<br>
&gt;=C2=A0 drivers/char/ipmi/ipmi_si_<wbr>intf.c=C2=A0 =C2=A0 =C2=A0|=C2=A0=
 2 --<br>
&gt;=C2=A0 3 files changed, 12 insertions(+), 16 deletions(-)<br>
&gt; <br>
&gt; diff --git a/drivers/char/ipmi/ipmi_si.h b/drivers/char/ipmi/ipmi_si.h=
<br>
&gt; index bac0ff86e48e..fd3167d1e1e9 100644<br>
&gt; --- a/drivers/char/ipmi/ipmi_si.h<br>
&gt; +++ b/drivers/char/ipmi/ipmi_si.h<br>
&gt; @@ -22,6 +22,9 @@ enum si_type {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0SI_TYPE_INVALID, SI_KCS, SI_SMIC, SI_BT<br>
&gt;=C2=A0 };<br>
&gt;=C2=A0 <br>
&gt; +/* &#39;invalid&#39; to allow a firmware-specified interface to be di=
sabled */<br>
&gt; +static __maybe_unused const char *const si_to_str[] =3D { &quot;inval=
id&quot;, &quot;kcs&quot;, &quot;smic&quot;, &quot;bt&quot; };<br>
<br>
Can we just make this non-static and leave the definition where it is?<br>
That would save a little space and wouldn&#39;t affect performance at all.<=
br>
<br></blockquote><div><br></div><div><br></div><div>We can=E2=80=99t. In su=
ch case we must export two symbols, including the size of an array. I prefe=
r to have it in the header. Another possibility is to add a terminator to t=
he array and adapt respective code. But still we will need to export one sy=
mbol. I haven=E2=80=99t checked if this is simply local export, or modules =
included.</div><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"=
margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
-corey<br>
<br>
&gt; +<br>
&gt;=C2=A0 enum ipmi_addr_space {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0IPMI_IO_ADDR_SPACE, IPMI_MEM_ADDR_SPACE<br>
&gt;=C2=A0 };<br>
&gt; diff --git a/drivers/char/ipmi/ipmi_si_<wbr>hardcode.c b/drivers/char/=
ipmi/ipmi_si_<wbr>hardcode.c<br>
&gt; index f6ece7569504..cf3797523469 100644<br>
&gt; --- a/drivers/char/ipmi/ipmi_si_<wbr>hardcode.c<br>
&gt; +++ b/drivers/char/ipmi/ipmi_si_<wbr>hardcode.c<br>
&gt; @@ -80,26 +80,21 @@ static void __init ipmi_hardcode_init_one(const ch=
ar *si_type_str,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0enum ipmi_addr_space addr_space)<br>
&gt;=C2=A0 {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0struct ipmi_plat_data p;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0int t;<br>
&gt;=C2=A0 <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0memset(&amp;p, 0, sizeof(p));<br>
&gt;=C2=A0 <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0p.iftype =3D IPMI_PLAT_IF_SI;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0if (!si_type_str || !*si_type_str || strcmp(si_ty=
pe_str, &quot;kcs&quot;) =3D=3D 0) {<br>
&gt; +=C2=A0 =C2=A0 =C2=A0if (!si_type_str || !*si_type_str) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0p.type =3D SI_KC=
S;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0} else if (strcmp(si_type_str, &quot;smic&quot;) =
=3D=3D 0) {<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0p.type =3D SI_SMIC;<b=
r>
&gt; -=C2=A0 =C2=A0 =C2=A0} else if (strcmp(si_type_str, &quot;bt&quot;) =
=3D=3D 0) {<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0p.type =3D SI_BT;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0} else if (strcmp(si_type_str, &quot;invalid&quot=
;) =3D=3D 0) {<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/*<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 * Allow a firmware-s=
pecified interface to be<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 * disabled.<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 */<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0p.type =3D SI_TYPE_IN=
VALID;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0} else {<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0pr_warn(&quot;Interfa=
ce type specified for interface %d, was invalid: %s\n&quot;,<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0i, si_type_str);<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0t =3D match_string(si=
_to_str, ARRAY_SIZE(si_to_str), si_type_str);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (t &lt; 0) {<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0pr_warn(&quot;Interface type specified for interface %d, was invalid=
: %s\n&quot;,<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0i, si_type_str);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0return;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0p.type =3D t;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt;=C2=A0 <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0p.regsize =3D regsizes[i];<br>
&gt; diff --git a/drivers/char/ipmi/ipmi_si_<wbr>intf.c b/drivers/char/ipmi=
/ipmi_si_<wbr>intf.c<br>
&gt; index be41a473e3c2..ff448098f185 100644<br>
&gt; --- a/drivers/char/ipmi/ipmi_si_<wbr>intf.c<br>
&gt; +++ b/drivers/char/ipmi/ipmi_si_<wbr>intf.c<br>
&gt; @@ -70,8 +70,6 @@ enum si_intf_state {<br>
&gt;=C2=A0 #define IPMI_BT_INTMASK_CLEAR_IRQ_BIT=C2=A0 =C2=A0 =C2=A0 =C2=A0=
 2<br>
&gt;=C2=A0 #define IPMI_BT_INTMASK_ENABLE_IRQ_BIT=C2=A0 =C2=A0 =C2=A0 =C2=
=A01<br>
&gt;=C2=A0 <br>
&gt; -static const char * const si_to_str[] =3D { &quot;invalid&quot;, &quo=
t;kcs&quot;, &quot;smic&quot;, &quot;bt&quot; };<br>
&gt; -<br>
&gt;=C2=A0 static bool initialized;<br>
&gt;=C2=A0 <br>
&gt;=C2=A0 /*<br>
&gt; -- <br>
&gt; 2.30.2<br>
&gt; <br>
</blockquote><br><br>-- <br>With Best Regards,<br>Andy Shevchenko<br><br><b=
r>

--0000000000006619c505befe319b--


--===============7196303851649976007==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============7196303851649976007==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

--===============7196303851649976007==--

