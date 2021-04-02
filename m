Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 22D73352BDB
	for <lists+openipmi-developer@lfdr.de>; Fri,  2 Apr 2021 17:47:29 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1lSM17-0006Fl-DT; Fri, 02 Apr 2021 15:47:25 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <andy.shevchenko@gmail.com>) id 1lSL23-0007uX-8X
 for openipmi-developer@lists.sourceforge.net; Fri, 02 Apr 2021 14:44:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 References:In-Reply-To:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=9uMS4w6OGkmHY/H4EzAITErTwWDQ+SmtKHXMN1koJ0g=; b=Dv9+1VNSA8BkhwzT2aXIJ50rfA
 7LGqjR6kF1L2Ka6gYIYuRu/dXI1q0RgHn454B3KBOE4TbiMS6dqJMA55wPvUynay3sqdXmPq3G3DT
 1/D1meaQMb2qkWnv+T00SfzQijU7Qo/OLGDGYlCI3UNeBOlXjsPdvo95l93NXJqLIAgY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:References:In-Reply-To:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=9uMS4w6OGkmHY/H4EzAITErTwWDQ+SmtKHXMN1koJ0g=; b=LHjqT6bGlGc5BUGo0miSxrmHOr
 lqki/AYEuCQIlo7z1RdijJxu2y8gbx+G0GEPXQhYhMN0089E5BTVqT01F3ht1GIXYSXN0zLWVquxL
 U8ceuyE2U7RA+Hx3p9k9BCYErqvt7ApRqg3wT1GUsV7XIlIPeCtORW/+VoY7P1yIjy7Q=;
Received: from mail-pl1-f182.google.com ([209.85.214.182])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1lSKqN-0077ab-BI
 for openipmi-developer@lists.sourceforge.net; Fri, 02 Apr 2021 14:32:34 +0000
Received: by mail-pl1-f182.google.com with SMTP id v8so2589405plz.10
 for <openipmi-developer@lists.sourceforge.net>;
 Fri, 02 Apr 2021 07:32:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:in-reply-to:references:from:date:message-id:subject:to
 :cc; bh=9uMS4w6OGkmHY/H4EzAITErTwWDQ+SmtKHXMN1koJ0g=;
 b=f2pTrvgsecVBkgGaSuV6jOFU/IeH+OwT8d9VeeKaUZrwJB19GgHknEvl63VldZnFir
 eN5nteSlVllNN78rSRoA05gGsp1YYE9UQkva+WnLEOyS2LpRCZjwtUTAZl8hO6M2rx4C
 xmOid2aS21nCKC27A3hHfKXWEU+6SPjROpMHj8TEs/kom+RHhHNMq5P9kUHKvC9sCxop
 zn0BFWe12A/jUas+lNz12FxJGTbCJySpZPrd5K4bB+NAoCsygM55Jn7z1SCFiskwyT8r
 AOoqRqBNFLPt4nN5iXnAQKbRoLYV1W74mKQghHK9jWUoCQG5T1y9XlhWyrtPBNe7reav
 zCww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:in-reply-to:references:from:date
 :message-id:subject:to:cc;
 bh=9uMS4w6OGkmHY/H4EzAITErTwWDQ+SmtKHXMN1koJ0g=;
 b=TT5obBfdXD96m00RGRJERTg8lJ9KAaBQHAehEjJQM0q3hH8/z/JNPrKneFFm4LOhu7
 X8uHEgsXuKcivoCthuEDRs3FGq0cecVC4nQ28Bimkr1aHgRj7/5iczbt+XCewoT1iP8I
 AT6UU6l/5nxDVpFiLusdEW7osEYxc8Mzzm+6vRgWd9UhLPNzpFldmp1UjnWcsD5W2eQ5
 UK4HM/uza4o5XVWth4OBgMmJ+qAHbruN+AgwW6fqMMrU7AmRwysGllh7DHGT8aMKLVhc
 F1Vbdm2ecY3TM6vpm9I7znJdQHHAWZQ92eH+AXXvtBU1RiuT1lABnPpycFIw0c4xpAkC
 hXig==
X-Gm-Message-State: AOAM530NnvUu7rToFBJdhkdWGwJXB328DhXyudqgq+TtUKnUtB5dlbTL
 jASSqvUf3CQ3yxEvQZnu+vXGL+z6AwDuZt5Ouck=
X-Google-Smtp-Source: ABdhPJxRTNe1BXPNv1sN80lkzPj5pwgP8bHsk6pyWvbDwk/Kkyh77iz6YTw03uv4vHXQOdysFLrm/UKqvd3aAhjsKao=
X-Received: by 2002:a17:90a:db49:: with SMTP id
 u9mr14585616pjx.181.1617373929705; 
 Fri, 02 Apr 2021 07:32:09 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a17:90a:7184:0:0:0:0 with HTTP; Fri, 2 Apr 2021 07:32:09
 -0700 (PDT)
In-Reply-To: <20210402134555.GR507977@minyard.net>
References: <20210330181649.66496-1-andriy.shevchenko@linux.intel.com>
 <20210330181649.66496-3-andriy.shevchenko@linux.intel.com>
 <20210402134555.GR507977@minyard.net>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Fri, 2 Apr 2021 17:32:09 +0300
Message-ID: <CAHp75VePveSzzGCEizb9fEzHKrLtikviLWYv_U_KZE8BdwkekA@mail.gmail.com>
To: "minyard@acm.org" <minyard@acm.org>
X-Spam-Score: 0.9 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (andy.shevchenko[at]gmail.com)
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: intel.com]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.214.182 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.214.182 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 TIME_LIMIT_EXCEEDED    Exceeded time limit / deadline
X-Headers-End: 1lSKqN-0077ab-BI
X-Mailman-Approved-At: Fri, 02 Apr 2021 15:47:24 +0000
Subject: Re: [Openipmi-developer] [PATCH v1 03/10] ipmi_si: Utilize
 temporary variable to hold device pointer
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
Content-Type: multipart/mixed; boundary="===============0749573113352643798=="
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

--===============0749573113352643798==
Content-Type: multipart/alternative; boundary="0000000000008c95e805befe36ab"

--0000000000008c95e805befe36ab
Content-Type: text/plain; charset="UTF-8"

On Friday, April 2, 2021, Corey Minyard <minyard@acm.org> wrote:

> On Tue, Mar 30, 2021 at 09:16:42PM +0300, Andy Shevchenko wrote:
> > By one of the previous clean up change we got a temporary variable to
> hold
> > a device pointer. It can be utilized in other calls in the ->probe() and
> > save a bit of LOCs.
>
> The description here isn't accurate, there is no previous change where a
> temporary variable comes in.  This change adds the temporary variable.
>
>
Oops, it has leftovers from similar change done by me somewhere else.


> This change is ok, but doesn't add much value.
>
>
One line less and better readability.



> -corey
>
> >
> > Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
> > ---
> >  drivers/char/ipmi/ipmi_si_platform.c | 15 +++++++--------
> >  1 file changed, 7 insertions(+), 8 deletions(-)
> >
> > diff --git a/drivers/char/ipmi/ipmi_si_platform.c
> b/drivers/char/ipmi/ipmi_si_platform.c
> > index 009563073d30..954c297b459b 100644
> > --- a/drivers/char/ipmi/ipmi_si_platform.c
> > +++ b/drivers/char/ipmi/ipmi_si_platform.c
> > @@ -309,6 +309,7 @@ static int find_slave_address(struct si_sm_io *io,
> int slave_addr)
> >
> >  static int acpi_ipmi_probe(struct platform_device *pdev)
> >  {
> > +     struct device *dev = &pdev->dev;
> >       struct si_sm_io io;
> >       acpi_handle handle;
> >       acpi_status status;
> > @@ -318,21 +319,20 @@ static int acpi_ipmi_probe(struct platform_device
> *pdev)
> >       if (!si_tryacpi)
> >               return -ENODEV;
> >
> > -     handle = ACPI_HANDLE(&pdev->dev);
> > +     handle = ACPI_HANDLE(dev);
> >       if (!handle)
> >               return -ENODEV;
> >
> >       memset(&io, 0, sizeof(io));
> >       io.addr_source = SI_ACPI;
> > -     dev_info(&pdev->dev, "probing via ACPI\n");
> > +     dev_info(dev, "probing via ACPI\n");
> >
> >       io.addr_info.acpi_info.acpi_handle = handle;
> >
> >       /* _IFT tells us the interface type: KCS, BT, etc */
> >       status = acpi_evaluate_integer(handle, "_IFT", NULL, &tmp);
> >       if (ACPI_FAILURE(status)) {
> > -             dev_err(&pdev->dev,
> > -                     "Could not find ACPI IPMI interface type\n");
> > +             dev_err(dev, "Could not find ACPI IPMI interface type\n");
> >               return -EINVAL;
> >       }
> >
> > @@ -349,10 +349,11 @@ static int acpi_ipmi_probe(struct platform_device
> *pdev)
> >       case 4: /* SSIF, just ignore */
> >               return -ENODEV;
> >       default:
> > -             dev_info(&pdev->dev, "unknown IPMI type %lld\n", tmp);
> > +             dev_info(dev, "unknown IPMI type %lld\n", tmp);
> >               return -EINVAL;
> >       }
> >
> > +     io.dev = dev;
> >       io.regsize = DEFAULT_REGSIZE;
> >       io.regshift = 0;
> >
> > @@ -376,9 +377,7 @@ static int acpi_ipmi_probe(struct platform_device
> *pdev)
> >
> >       io.slave_addr = find_slave_address(&io, io.slave_addr);
> >
> > -     io.dev = &pdev->dev;
> > -
> > -     dev_info(io.dev, "%pR regsize %d spacing %d irq %d\n",
> > +     dev_info(dev, "%pR regsize %d spacing %d irq %d\n",
> >                res, io.regsize, io.regspacing, io.irq);
> >
> >       request_module("acpi_ipmi");
> > --
> > 2.30.2
> >
>


-- 
With Best Regards,
Andy Shevchenko

--0000000000008c95e805befe36ab
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<br><br>On Friday, April 2, 2021, Corey Minyard &lt;<a href=3D"mailto:minya=
rd@acm.org">minyard@acm.org</a>&gt; wrote:<br><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex=
">On Tue, Mar 30, 2021 at 09:16:42PM +0300, Andy Shevchenko wrote:<br>
&gt; By one of the previous clean up change we got a temporary variable to =
hold<br>
&gt; a device pointer. It can be utilized in other calls in the -&gt;probe(=
) and<br>
&gt; save a bit of LOCs.<br>
<br>
The description here isn&#39;t accurate, there is no previous change where =
a<br>
temporary variable comes in.=C2=A0 This change adds the temporary variable.=
<br>
<br></blockquote><div><br></div><div>Oops, it has leftovers from similar ch=
ange done by me somewhere else.</div><div>=C2=A0</div><blockquote class=3D"=
gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-=
left:1ex">
This change is ok, but doesn&#39;t add much value.<br>
<br></blockquote><div><br></div><div>One line less and better readability.<=
/div><div><br></div><div>=C2=A0</div><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
-corey<br>
<br>
&gt; <br>
&gt; Signed-off-by: Andy Shevchenko &lt;<a href=3D"mailto:andriy.shevchenko=
@linux.intel.com">andriy.shevchenko@linux.<wbr>intel.com</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 drivers/char/ipmi/ipmi_si_<wbr>platform.c | 15 +++++++--------<b=
r>
&gt;=C2=A0 1 file changed, 7 insertions(+), 8 deletions(-)<br>
&gt; <br>
&gt; diff --git a/drivers/char/ipmi/ipmi_si_<wbr>platform.c b/drivers/char/=
ipmi/ipmi_si_<wbr>platform.c<br>
&gt; index 009563073d30..954c297b459b 100644<br>
&gt; --- a/drivers/char/ipmi/ipmi_si_<wbr>platform.c<br>
&gt; +++ b/drivers/char/ipmi/ipmi_si_<wbr>platform.c<br>
&gt; @@ -309,6 +309,7 @@ static int find_slave_address(struct si_sm_io *io,=
 int slave_addr)<br>
&gt;=C2=A0 <br>
&gt;=C2=A0 static int acpi_ipmi_probe(struct platform_device *pdev)<br>
&gt;=C2=A0 {<br>
&gt; +=C2=A0 =C2=A0 =C2=A0struct device *dev =3D &amp;pdev-&gt;dev;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0struct si_sm_io io;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0acpi_handle handle;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0acpi_status status;<br>
&gt; @@ -318,21 +319,20 @@ static int acpi_ipmi_probe(struct platform_devic=
e *pdev)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0if (!si_tryacpi)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return -ENODEV;<=
br>
&gt;=C2=A0 <br>
&gt; -=C2=A0 =C2=A0 =C2=A0handle =3D ACPI_HANDLE(&amp;pdev-&gt;dev);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0handle =3D ACPI_HANDLE(dev);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0if (!handle)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return -ENODEV;<=
br>
&gt;=C2=A0 <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0memset(&amp;io, 0, sizeof(io));<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0io.addr_source =3D SI_ACPI;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0dev_info(&amp;pdev-&gt;dev, &quot;probing via ACP=
I\n&quot;);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0dev_info(dev, &quot;probing via ACPI\n&quot;);<br=
>
&gt;=C2=A0 <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0io.addr_info.acpi_info.acpi_<wbr>handle =3D =
handle;<br>
&gt;=C2=A0 <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0/* _IFT tells us the interface type: KCS, BT=
, etc */<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0status =3D acpi_evaluate_integer(handle, &qu=
ot;_IFT&quot;, NULL, &amp;tmp);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0if (ACPI_FAILURE(status)) {<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0dev_err(&amp;pdev-&gt=
;dev,<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0&quot;Could not find ACPI IPMI interface type\n&quot;);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0dev_err(dev, &quot;Co=
uld not find ACPI IPMI interface type\n&quot;);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return -EINVAL;<=
br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt;=C2=A0 <br>
&gt; @@ -349,10 +349,11 @@ static int acpi_ipmi_probe(struct platform_devic=
e *pdev)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0case 4: /* SSIF, just ignore */<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return -ENODEV;<=
br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0default:<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0dev_info(&amp;pdev-&g=
t;dev, &quot;unknown IPMI type %lld\n&quot;, tmp);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0dev_info(dev, &quot;u=
nknown IPMI type %lld\n&quot;, tmp);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return -EINVAL;<=
br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt;=C2=A0 <br>
&gt; +=C2=A0 =C2=A0 =C2=A0<a href=3D"http://io.dev" target=3D"_blank">io.de=
v</a> =3D dev;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0io.regsize =3D DEFAULT_REGSIZE;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0io.regshift =3D 0;<br>
&gt;=C2=A0 <br>
&gt; @@ -376,9 +377,7 @@ static int acpi_ipmi_probe(struct platform_device =
*pdev)<br>
&gt;=C2=A0 <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0io.slave_addr =3D find_slave_address(&amp;io=
, io.slave_addr);<br>
&gt;=C2=A0 <br>
&gt; -=C2=A0 =C2=A0 =C2=A0<a href=3D"http://io.dev" target=3D"_blank">io.de=
v</a> =3D &amp;pdev-&gt;dev;<br>
&gt; -<br>
&gt; -=C2=A0 =C2=A0 =C2=A0dev_info(<a href=3D"http://io.dev" target=3D"_bla=
nk">io.dev</a>, &quot;%pR regsize %d spacing %d irq %d\n&quot;,<br>
&gt; +=C2=A0 =C2=A0 =C2=A0dev_info(dev, &quot;%pR regsize %d spacing %d irq=
 %d\n&quot;,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 res, io.regsize=
, io.regspacing, io.irq);<br>
&gt;=C2=A0 <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0request_module(&quot;acpi_ipmi&quot;);<br>
&gt; -- <br>
&gt; 2.30.2<br>
&gt; <br>
</blockquote><br><br>-- <br>With Best Regards,<br>Andy Shevchenko<br><br><b=
r>

--0000000000008c95e805befe36ab--


--===============0749573113352643798==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============0749573113352643798==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

--===============0749573113352643798==--

