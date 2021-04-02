Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C4EE0352BD9
	for <lists+openipmi-developer@lfdr.de>; Fri,  2 Apr 2021 17:47:28 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1lSM17-0006FT-AC; Fri, 02 Apr 2021 15:47:25 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <andy.shevchenko@gmail.com>) id 1lSKsL-000774-Mm
 for openipmi-developer@lists.sourceforge.net; Fri, 02 Apr 2021 14:34:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 References:In-Reply-To:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=97dIBSgasUnScMJH6mWyq4zdAeoQH+wdL5h30REXqHI=; b=hO/JgRXRexlwA4iinJP0dJwBXW
 ay1yPbhs2XH9STyQ7e29DQ1GvnI47nhaAOsf3VdvfQLxNPaInuwqZAngVjPW7nPpXLS/4n/EHVV3h
 0Qslmm0MKCNjYOiNdmXIwecApl6oz84wsDVDgPMnT+gIAYFGbHevm+XYXLSv3HF8XA80=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:References:In-Reply-To:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=97dIBSgasUnScMJH6mWyq4zdAeoQH+wdL5h30REXqHI=; b=A+Nw2tbmqXVXHgDPMiWdDTCheM
 CdJQal2mk+1AZ3X+zyruonFBkUQtH8xnaZXNSOiDfLhj4pkfeHv35cBJi36q9kdcYSvP8WFv0lrPw
 VbQWSHYz7kuqvc6QhEJtzjXrhRv1GR18RwYZnHUFoIuhihgNe4GINBCWrbxbuJVGYhTo=;
Received: from mail-pl1-f179.google.com ([209.85.214.179])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1lSKs6-0004Fi-Bp
 for openipmi-developer@lists.sourceforge.net; Fri, 02 Apr 2021 14:34:17 +0000
Received: by mail-pl1-f179.google.com with SMTP id d8so2593074plh.11
 for <openipmi-developer@lists.sourceforge.net>;
 Fri, 02 Apr 2021 07:34:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:in-reply-to:references:from:date:message-id:subject:to
 :cc; bh=97dIBSgasUnScMJH6mWyq4zdAeoQH+wdL5h30REXqHI=;
 b=ely5jMSugETn3KYH70qhTlF//qpt0O/ymkNdpUZtkkOqatDmR4JRd+Pwcql1BK5Aje
 MKOlOPi8GfP9th9K2t6DSKj4rNkr+uDcBf34xdKOriWlHRPhOPBApcbzvFctQbE//4e1
 bOpj07+VlGNMQYLFirhMrg5iwveOjFEO2HQ5QRnc3vcVi765kWiS6FSWyLHqI3BiVpF+
 vPOzWXFZNURLOmSr/ttDRhzcYm1sukZbg/Qj/sGIhT4oeczgz+B2XQmgk7c/DQRExQXr
 GR+yB5E4dFgvLRR1WYDFd3A8qPyx89HGMAnjMHKShuWpSFleifuxPrGPKJoICdVaD/LT
 reIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:in-reply-to:references:from:date
 :message-id:subject:to:cc;
 bh=97dIBSgasUnScMJH6mWyq4zdAeoQH+wdL5h30REXqHI=;
 b=NpuVfMV7HsY0XM4W53Mlkv/rNx2MANR4vmrAVxElJk78NPD0kUpnm6ayA1g4pIXn1/
 eZceFrYQf+TQ/lghWVp9p6tmGeCpKBY3pqoebsHUsAz9P9By0ezXIRQo3HB73QIOZCKE
 ft3CTiA89qpaPb6HDRNMRv3BSDiJpLdP6cSwtQ9EPdkrfTd+O+8UF7+O0hTj41i95xJ7
 JVMHBFbnWw+91exGDzV8G5RNKEwk+yUiPxlxDGGoWP6FEdtaS6ML1UIvPvmO+zgQ0Aht
 JvxDXVuhwU7Rzvm0/0InarLP4gbzmuK1O8sZOVZLnf2ydeoLZLeAfnfDubSDLURp9Cvd
 EaoA==
X-Gm-Message-State: AOAM531gPioZSDQhV7Tc0vweEYcFomlH9psatZ5DhlB4F/3qMJoOqnLa
 bLrncOejvJMnaC3FYExh439Fq6joPNQoHvx47Kk=
X-Google-Smtp-Source: ABdhPJw2Z+SidUJ+MAkLAH5KNrPTcpqbN8gPEGhCa9VZajEyXKtU4E7ed005rQkjHpyAcsHbCjUk3LkE36DcOFvY9dE=
X-Received: by 2002:a17:90a:b311:: with SMTP id
 d17mr14408534pjr.228.1617374036815; 
 Fri, 02 Apr 2021 07:33:56 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a17:90a:7184:0:0:0:0 with HTTP; Fri, 2 Apr 2021 07:33:55
 -0700 (PDT)
In-Reply-To: <20210402135756.GU507977@minyard.net>
References: <20210330181649.66496-1-andriy.shevchenko@linux.intel.com>
 <20210402135756.GU507977@minyard.net>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Fri, 2 Apr 2021 17:33:55 +0300
Message-ID: <CAHp75VdY736Xcer4RA=eENURM6WSNQoPKEZMYO3Ktkko3kv0Qw@mail.gmail.com>
To: "minyard@acm.org" <minyard@acm.org>
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (andy.shevchenko[at]gmail.com)
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: acm.org]
 0.0 DKIM_ADSP_CUSTOM_MED   No valid author signature, adsp_override is
 CUSTOM_MED
 0.0 TIME_LIMIT_EXCEEDED    Exceeded time limit / deadline
X-Headers-End: 1lSKs6-0004Fi-Bp
X-Mailman-Approved-At: Fri, 02 Apr 2021 15:47:23 +0000
Subject: Re: [Openipmi-developer] [PATCH v1 01/10] ipmi_si: Switch to use
 platform_get_mem_or_io()
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
Content-Type: multipart/mixed; boundary="===============4428261695305681499=="
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

--===============4428261695305681499==
Content-Type: multipart/alternative; boundary="000000000000eef33a05befe3c97"

--000000000000eef33a05befe3c97
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Friday, April 2, 2021, Corey Minyard <minyard@acm.org> wrote:

> On Tue, Mar 30, 2021 at 09:16:40PM +0300, Andy Shevchenko wrote:
> > Switch to use new platform_get_mem_or_io() instead of home grown
> analogue.
> > Note, we also introduce ipmi_set_addr_data_and_space() helper here.
>
> You didn't send a part 0 that I saw, so just using this.  This is a nice
> cleanup set, I just had a few very minor nits.  Thanks for this.


I can wrap up in v2. Basically it=E2=80=99s jus a set of various clean ups,=
 main of
them is a use of new API for resources.


>
> -corey
>
> >
> > Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
> > ---
> >  drivers/char/ipmi/ipmi_si_platform.c | 40 +++++++++++-----------------
> >  1 file changed, 16 insertions(+), 24 deletions(-)
> >
> > diff --git a/drivers/char/ipmi/ipmi_si_platform.c
> b/drivers/char/ipmi/ipmi_si_platform.c
> > index 129b5713f187..d7bd093f80e9 100644
> > --- a/drivers/char/ipmi/ipmi_si_platform.c
> > +++ b/drivers/char/ipmi/ipmi_si_platform.c
> > @@ -100,35 +100,32 @@ static int acpi_gpe_irq_setup(struct si_sm_io *io=
)
> >  }
> >  #endif
> >
> > +static void ipmi_set_addr_data_and_space(struct resource *r, struct
> si_sm_io *io)
> > +{
> > +     io->addr_data =3D r->start;
> > +     if (resource_type(r) =3D=3D IORESOURCE_IO)
> > +             io->addr_space =3D IPMI_IO_ADDR_SPACE;
> > +     else
> > +             io->addr_space =3D IPMI_MEM_ADDR_SPACE;
> > +}
> > +
> >  static struct resource *
> >  ipmi_get_info_from_resources(struct platform_device *pdev,
> >                            struct si_sm_io *io)
> >  {
> > -     struct resource *res, *res_second;
> > +     struct resource *res, *second;
> >
> > -     res =3D platform_get_resource(pdev, IORESOURCE_IO, 0);
> > -     if (res) {
> > -             io->addr_space =3D IPMI_IO_ADDR_SPACE;
> > -     } else {
> > -             res =3D platform_get_resource(pdev, IORESOURCE_MEM, 0);
> > -             if (res)
> > -                     io->addr_space =3D IPMI_MEM_ADDR_SPACE;
> > -     }
> > +     res =3D platform_get_mem_or_io(pdev, 0);
> >       if (!res) {
> >               dev_err(&pdev->dev, "no I/O or memory address\n");
> >               return NULL;
> >       }
> > -     io->addr_data =3D res->start;
> > +     ipmi_set_addr_data_and_space(res, io);
> >
> >       io->regspacing =3D DEFAULT_REGSPACING;
> > -     res_second =3D platform_get_resource(pdev,
> > -                            (io->addr_space =3D=3D IPMI_IO_ADDR_SPACE)=
 ?
> > -                                     IORESOURCE_IO : IORESOURCE_MEM,
> > -                            1);
> > -     if (res_second) {
> > -             if (res_second->start > io->addr_data)
> > -                     io->regspacing =3D res_second->start - io->addr_d=
ata;
> > -     }
> > +     second =3D platform_get_mem_or_io(pdev, 1);
> > +     if (second && resource_type(second) =3D=3D resource_type(res) &&
> second->start > io->addr_data)
> > +             io->regspacing =3D second->start - io->addr_data;
> >
> >       return res;
> >  }
> > @@ -275,12 +272,7 @@ static int of_ipmi_probe(struct platform_device
> *pdev)
> >       io.addr_source  =3D SI_DEVICETREE;
> >       io.irq_setup    =3D ipmi_std_irq_setup;
> >
> > -     if (resource.flags & IORESOURCE_IO)
> > -             io.addr_space =3D IPMI_IO_ADDR_SPACE;
> > -     else
> > -             io.addr_space =3D IPMI_MEM_ADDR_SPACE;
> > -
> > -     io.addr_data    =3D resource.start;
> > +     ipmi_set_addr_data_and_space(&resource, &io);
> >
> >       io.regsize      =3D regsize ? be32_to_cpup(regsize) :
> DEFAULT_REGSIZE;
> >       io.regspacing   =3D regspacing ? be32_to_cpup(regspacing) :
> DEFAULT_REGSPACING;
> > --
> > 2.30.2
> >
>


--=20
With Best Regards,
Andy Shevchenko

--000000000000eef33a05befe3c97
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<br><br>On Friday, April 2, 2021, Corey Minyard &lt;<a href=3D"mailto:minya=
rd@acm.org">minyard@acm.org</a>&gt; wrote:<br><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex=
">On Tue, Mar 30, 2021 at 09:16:40PM +0300, Andy Shevchenko wrote:<br>
&gt; Switch to use new platform_get_mem_or_io() instead of home grown analo=
gue.<br>
&gt; Note, we also introduce ipmi_set_addr_data_and_space() helper here.<br=
>
<br>
You didn&#39;t send a part 0 that I saw, so just using this.=C2=A0 This is =
a nice<br>
cleanup set, I just had a few very minor nits.=C2=A0 Thanks for this.</bloc=
kquote><div><br></div><div>I can wrap up in v2. Basically it=E2=80=99s jus =
a set of various clean ups, main of them is a use of new API for resources.=
</div><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0 =
0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
<br>
-corey<br>
<br>
&gt; <br>
&gt; Signed-off-by: Andy Shevchenko &lt;<a href=3D"mailto:andriy.shevchenko=
@linux.intel.com">andriy.shevchenko@linux.<wbr>intel.com</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 drivers/char/ipmi/ipmi_si_<wbr>platform.c | 40 +++++++++++------=
-----------<br>
&gt;=C2=A0 1 file changed, 16 insertions(+), 24 deletions(-)<br>
&gt; <br>
&gt; diff --git a/drivers/char/ipmi/ipmi_si_<wbr>platform.c b/drivers/char/=
ipmi/ipmi_si_<wbr>platform.c<br>
&gt; index 129b5713f187..d7bd093f80e9 100644<br>
&gt; --- a/drivers/char/ipmi/ipmi_si_<wbr>platform.c<br>
&gt; +++ b/drivers/char/ipmi/ipmi_si_<wbr>platform.c<br>
&gt; @@ -100,35 +100,32 @@ static int acpi_gpe_irq_setup(struct si_sm_io *i=
o)<br>
&gt;=C2=A0 }<br>
&gt;=C2=A0 #endif<br>
&gt;=C2=A0 <br>
&gt; +static void ipmi_set_addr_data_and_space(<wbr>struct resource *r, str=
uct si_sm_io *io)<br>
&gt; +{<br>
&gt; +=C2=A0 =C2=A0 =C2=A0io-&gt;addr_data =3D r-&gt;start;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0if (resource_type(r) =3D=3D IORESOURCE_IO)<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0io-&gt;addr_space =3D=
 IPMI_IO_ADDR_SPACE;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0else<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0io-&gt;addr_space =3D=
 IPMI_MEM_ADDR_SPACE;<br>
&gt; +}<br>
&gt; +<br>
&gt;=C2=A0 static struct resource *<br>
&gt;=C2=A0 ipmi_get_info_from_resources(<wbr>struct platform_device *pdev,<=
br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 struct si_sm_io *io)<br>
&gt;=C2=A0 {<br>
&gt; -=C2=A0 =C2=A0 =C2=A0struct resource *res, *res_second;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0struct resource *res, *second;<br>
&gt;=C2=A0 <br>
&gt; -=C2=A0 =C2=A0 =C2=A0res =3D platform_get_resource(pdev, IORESOURCE_IO=
, 0);<br>
&gt; -=C2=A0 =C2=A0 =C2=A0if (res) {<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0io-&gt;addr_space =3D=
 IPMI_IO_ADDR_SPACE;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0} else {<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0res =3D platform_get_=
resource(pdev, IORESOURCE_MEM, 0);<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (res)<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0io-&gt;addr_space =3D IPMI_MEM_ADDR_SPACE;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0}<br>
&gt; +=C2=A0 =C2=A0 =C2=A0res =3D platform_get_mem_or_io(pdev, 0);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0if (!res) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0dev_err(&amp;pde=
v-&gt;dev, &quot;no I/O or memory address\n&quot;);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return NULL;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt; -=C2=A0 =C2=A0 =C2=A0io-&gt;addr_data =3D res-&gt;start;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0ipmi_set_addr_data_and_space(<wbr>res, io);<br>
&gt;=C2=A0 <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0io-&gt;regspacing =3D DEFAULT_REGSPACING;<br=
>
&gt; -=C2=A0 =C2=A0 =C2=A0res_second =3D platform_get_resource(pdev,<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 (io-&gt;addr_space =3D=3D IPMI_IO_ADDR_SPACE) =
?<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0IORESOURCE_I=
O : IORESOURCE_MEM,<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 1);<br>
&gt; -=C2=A0 =C2=A0 =C2=A0if (res_second) {<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (res_second-&gt;st=
art &gt; io-&gt;addr_data)<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0io-&gt;regspacing =3D res_second-&gt;start - io-&gt;addr_data;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0}<br>
&gt; +=C2=A0 =C2=A0 =C2=A0second =3D platform_get_mem_or_io(pdev, 1);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0if (second &amp;&amp; resource_type(second) =3D=
=3D resource_type(res) &amp;&amp; second-&gt;start &gt; io-&gt;addr_data)<b=
r>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0io-&gt;regspacing =3D=
 second-&gt;start - io-&gt;addr_data;<br>
&gt;=C2=A0 <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0return res;<br>
&gt;=C2=A0 }<br>
&gt; @@ -275,12 +272,7 @@ static int of_ipmi_probe(struct platform_device *=
pdev)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0io.addr_source=C2=A0 =3D SI_DEVICETREE;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0io.irq_setup=C2=A0 =C2=A0 =3D ipmi_std_irq_s=
etup;<br>
&gt;=C2=A0 <br>
&gt; -=C2=A0 =C2=A0 =C2=A0if (resource.flags &amp; IORESOURCE_IO)<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0io.addr_space =3D IPM=
I_IO_ADDR_SPACE;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0else<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0io.addr_space =3D IPM=
I_MEM_ADDR_SPACE;<br>
&gt; -<br>
&gt; -=C2=A0 =C2=A0 =C2=A0io.addr_data=C2=A0 =C2=A0 =3D resource.start;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0ipmi_set_addr_data_and_space(&amp;<wbr>resource, =
&amp;io);<br>
&gt;=C2=A0 <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0io.regsize=C2=A0 =C2=A0 =C2=A0 =3D regsize ?=
 be32_to_cpup(regsize) : DEFAULT_REGSIZE;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0io.regspacing=C2=A0 =C2=A0=3D regspacing ? b=
e32_to_cpup(regspacing) : DEFAULT_REGSPACING;<br>
&gt; -- <br>
&gt; 2.30.2<br>
&gt; <br>
</blockquote><br><br>-- <br>With Best Regards,<br>Andy Shevchenko<br><br><b=
r>

--000000000000eef33a05befe3c97--


--===============4428261695305681499==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============4428261695305681499==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

--===============4428261695305681499==--

