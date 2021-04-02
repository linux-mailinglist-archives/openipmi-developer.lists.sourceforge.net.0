Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id F0494352BDA
	for <lists+openipmi-developer@lfdr.de>; Fri,  2 Apr 2021 17:47:28 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1lSM17-0006Fc-Ba; Fri, 02 Apr 2021 15:47:25 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <andy.shevchenko@gmail.com>) id 1lSL1y-0007uX-6T
 for openipmi-developer@lists.sourceforge.net; Fri, 02 Apr 2021 14:44:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 References:In-Reply-To:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=PdaWLZvoknN+SSC27KrV8EGZ8G/q+a60OPQ7oRZril0=; b=K3XRdOi2PQr/OaiPTsyox+tGYf
 P+oYeBHW1x132Yk05UOBXZKIiF0WgRj9ItIBPa+g/GHhk+7rNcbVkNJav4tR+TGM3Q6bAjxoA4QD0
 M+SIGcqnC073oCJzmzyZHwlSjp+XoFp9lQ5jTNplaZ1D2Z0vIyEQkpksLYOrcnBAY8Is=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:References:In-Reply-To:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=PdaWLZvoknN+SSC27KrV8EGZ8G/q+a60OPQ7oRZril0=; b=bfWsADXWhD1eKKJLV+RjynsLfw
 lo3uD/g5mMbIPGo6Z35xPJ3oektOitJl7U/4rhDAsG56+US+gIcbtuskiaKT7fWQ4Z1P7zHBmZneT
 o3HAKei7Br6tFvq0yj5fsSm3K/bypFQc1EVSTqiUgO/RjPNhVUX8uhnkxe1Yr15Ra7es=;
Received: from mail-pf1-f171.google.com ([209.85.210.171])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1lSKsn-0077p7-KI
 for openipmi-developer@lists.sourceforge.net; Fri, 02 Apr 2021 14:35:00 +0000
Received: by mail-pf1-f171.google.com with SMTP id c17so3711306pfn.6
 for <openipmi-developer@lists.sourceforge.net>;
 Fri, 02 Apr 2021 07:34:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:in-reply-to:references:from:date:message-id:subject:to
 :cc; bh=PdaWLZvoknN+SSC27KrV8EGZ8G/q+a60OPQ7oRZril0=;
 b=KbQBNXFI2BO1DFjZywAo6eJrT8qSTkQcEQUILAc/SdfFq5u5W9UTvK/xatO/4WAKh1
 xmD+pe1Q6PgoxHwnCVNkX0frl9it9RmhsoqWwlEXMJ7Hv3Z/mJm2PmOjSmXJ8FFhM/HL
 cWTiBfGK5FBsU1LRwzCqJC16SXB5Iu+UCbeZvw7lX9D3pZuKF5GCRu6TmzGz69QnQSRX
 jQU/hs2RtYXRJZ3H2POeAKVMqMOejy/LqIEjz8ADqtg5PgI6kzohXDPDQELaOfHZENXM
 I2oZMO1pVWrXiz4cfieA3n/6Nwef3tYXvtU7JWg3rLejEOK0rYQyR3rwseijQ9rNPk8C
 3i/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:in-reply-to:references:from:date
 :message-id:subject:to:cc;
 bh=PdaWLZvoknN+SSC27KrV8EGZ8G/q+a60OPQ7oRZril0=;
 b=cENiEtodvCYjUGYQsTVPe5dE83yc7C9RESX7/LWV2hvV8v9P1colpSwMFRXnNJovsm
 8dblILdkNMA9iNeeEyAI12m9mV94ZNND3s++3CderQJFdbTUkcBN0ttSWvlx0bT7q84G
 xfUlgDD4wVZLi5GX+ClyILZXFCUf5YOH6XOFExJMFNrmdVwMG+Q2CDINRAwEpETQi9Rf
 nUjytDAW5F9Ciii/6i0ReVF7kuJ1GpRtE7EFa3fA6svU/0dAa9LxsJGee9/OpMkboV1S
 +eP4a3JR05amIngOdryO0OR2tU5ggmSkAwdCNo4cW+fJZd5qe3kEGOEZxupflJQnmMyx
 aFGw==
X-Gm-Message-State: AOAM533jJnfzl1ICP24bzJ0hGII8OKNy1deZKAOjGzi16gq+Nus4ukJj
 EBn6PmOpVZLmHU0y6MV+zlUxJ0/QdqJdKTjroMc=
X-Google-Smtp-Source: ABdhPJyaHOKAHfArumh3VjMQek0qYcvL3EBt9F/RkiE2Npy6odFb8R4IwBZe57v3vjBU5xqJ/8NRoOGQlQj9VhU+OMY=
X-Received: by 2002:a62:e50f:0:b029:214:8e4a:ae46 with SMTP id
 n15-20020a62e50f0000b02902148e4aae46mr12565726pff.73.1617374080048; Fri, 02
 Apr 2021 07:34:40 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a17:90a:7184:0:0:0:0 with HTTP; Fri, 2 Apr 2021 07:34:39
 -0700 (PDT)
In-Reply-To: <20210402134849.GS507977@minyard.net>
References: <20210330181649.66496-1-andriy.shevchenko@linux.intel.com>
 <20210330181649.66496-5-andriy.shevchenko@linux.intel.com>
 <20210402134849.GS507977@minyard.net>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Fri, 2 Apr 2021 17:34:39 +0300
Message-ID: <CAHp75VcW+fTUU6yO5_mRbWMD6Dn13+Ns7jgd9fe5VxtvsVAgBQ@mail.gmail.com>
To: "minyard@acm.org" <minyard@acm.org>
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (andy.shevchenko[at]gmail.com)
 0.0 DKIM_ADSP_CUSTOM_MED   No valid author signature, adsp_override is
 CUSTOM_MED
 0.0 TIME_LIMIT_EXCEEDED    Exceeded time limit / deadline
X-Headers-End: 1lSKsn-0077p7-KI
X-Mailman-Approved-At: Fri, 02 Apr 2021 15:47:23 +0000
Subject: Re: [Openipmi-developer] [PATCH v1 05/10] ipmi_si: Introduce
 panic_event_str array
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
Content-Type: multipart/mixed; boundary="===============6820501977045632912=="
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

--===============6820501977045632912==
Content-Type: multipart/alternative; boundary="00000000000082a1c405befe3fef"

--00000000000082a1c405befe3fef
Content-Type: text/plain; charset="UTF-8"

On Friday, April 2, 2021, Corey Minyard <minyard@acm.org> wrote:

> On Tue, Mar 30, 2021 at 09:16:44PM +0300, Andy Shevchenko wrote:
> > Instead of twice repeat the constant literals, introduce
> > panic_event_str array. It allows to simplify the code with
> > help of match_string() API.
> >
> > Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
> > ---
> >  drivers/char/ipmi/ipmi_msghandler.c | 49 ++++++++++-------------------
> >  1 file changed, 17 insertions(+), 32 deletions(-)
> >
> > diff --git a/drivers/char/ipmi/ipmi_msghandler.c
> b/drivers/char/ipmi/ipmi_msghandler.c
> > index f19f0f967e28..c7d37366d7bb 100644
> > --- a/drivers/char/ipmi/ipmi_msghandler.c
> > +++ b/drivers/char/ipmi/ipmi_msghandler.c
> > @@ -52,8 +52,12 @@ static bool drvregistered;
> >  enum ipmi_panic_event_op {
> >       IPMI_SEND_PANIC_EVENT_NONE,
> >       IPMI_SEND_PANIC_EVENT,
> > -     IPMI_SEND_PANIC_EVENT_STRING
> > +     IPMI_SEND_PANIC_EVENT_STRING,
> > +     IPMI_SEND_PANIC_EVENT_MAX
> >  };
>
> This is a nice change.  Can you add a comment here so that readers know
> that the above enum and the following array are tied numerically?




Sure. I also add a prefix.



>
> -corey
>
> > +
> > +static const char *const panic_event_str[] = { "none", "event",
> "string", NULL };
> > +
> >  #ifdef CONFIG_IPMI_PANIC_STRING
> >  #define IPMI_PANIC_DEFAULT IPMI_SEND_PANIC_EVENT_STRING
> >  #elif defined(CONFIG_IPMI_PANIC_EVENT)
> > @@ -68,46 +72,27 @@ static int panic_op_write_handler(const char *val,
> >                                 const struct kernel_param *kp)
> >  {
> >       char valcp[16];
> > -     char *s;
> > -
> > -     strncpy(valcp, val, 15);
> > -     valcp[15] = '\0';
> > +     int e;
> >
> > -     s = strstrip(valcp);
> > -
> > -     if (strcmp(s, "none") == 0)
> > -             ipmi_send_panic_event = IPMI_SEND_PANIC_EVENT_NONE;
> > -     else if (strcmp(s, "event") == 0)
> > -             ipmi_send_panic_event = IPMI_SEND_PANIC_EVENT;
> > -     else if (strcmp(s, "string") == 0)
> > -             ipmi_send_panic_event = IPMI_SEND_PANIC_EVENT_STRING;
> > -     else
> > -             return -EINVAL;
> > +     strscpy(valcp, val, sizeof(valcp));
> > +     e = match_string(panic_event_str, -1, strstrip(valcp));
> > +     if (e < 0)
> > +             return e;
> >
> > +     ipmi_send_panic_event = e;
> >       return 0;
> >  }
> >
> >  static int panic_op_read_handler(char *buffer, const struct
> kernel_param *kp)
> >  {
> > -     switch (ipmi_send_panic_event) {
> > -     case IPMI_SEND_PANIC_EVENT_NONE:
> > -             strcpy(buffer, "none\n");
> > -             break;
> > -
> > -     case IPMI_SEND_PANIC_EVENT:
> > -             strcpy(buffer, "event\n");
> > -             break;
> > -
> > -     case IPMI_SEND_PANIC_EVENT_STRING:
> > -             strcpy(buffer, "string\n");
> > -             break;
> > +     const char *event_str;
> >
> > -     default:
> > -             strcpy(buffer, "???\n");
> > -             break;
> > -     }
> > +     if (ipmi_send_panic_event >= IPMI_SEND_PANIC_EVENT_MAX)
> > +             event_str = "???";
> > +     else
> > +             event_str = panic_event_str[ipmi_send_panic_event];
> >
> > -     return strlen(buffer);
> > +     return sprintf(buffer, "%s\n", event_str);
> >  }
> >
> >  static const struct kernel_param_ops panic_op_ops = {
> > --
> > 2.30.2
> >
>


-- 
With Best Regards,
Andy Shevchenko

--00000000000082a1c405befe3fef
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<br><br>On Friday, April 2, 2021, Corey Minyard &lt;<a href=3D"mailto:minya=
rd@acm.org">minyard@acm.org</a>&gt; wrote:<br><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex=
">On Tue, Mar 30, 2021 at 09:16:44PM +0300, Andy Shevchenko wrote:<br>
&gt; Instead of twice repeat the constant literals, introduce<br>
&gt; panic_event_str array. It allows to simplify the code with<br>
&gt; help of match_string() API.<br>
&gt; <br>
&gt; Signed-off-by: Andy Shevchenko &lt;<a href=3D"mailto:andriy.shevchenko=
@linux.intel.com">andriy.shevchenko@linux.<wbr>intel.com</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 drivers/char/ipmi/ipmi_<wbr>msghandler.c | 49 ++++++++++--------=
-----------<br>
&gt;=C2=A0 1 file changed, 17 insertions(+), 32 deletions(-)<br>
&gt; <br>
&gt; diff --git a/drivers/char/ipmi/ipmi_<wbr>msghandler.c b/drivers/char/i=
pmi/ipmi_<wbr>msghandler.c<br>
&gt; index f19f0f967e28..c7d37366d7bb 100644<br>
&gt; --- a/drivers/char/ipmi/ipmi_<wbr>msghandler.c<br>
&gt; +++ b/drivers/char/ipmi/ipmi_<wbr>msghandler.c<br>
&gt; @@ -52,8 +52,12 @@ static bool drvregistered;<br>
&gt;=C2=A0 enum ipmi_panic_event_op {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0IPMI_SEND_PANIC_EVENT_NONE,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0IPMI_SEND_PANIC_EVENT,<br>
&gt; -=C2=A0 =C2=A0 =C2=A0IPMI_SEND_PANIC_EVENT_STRING<br>
&gt; +=C2=A0 =C2=A0 =C2=A0IPMI_SEND_PANIC_EVENT_STRING,<br>
&gt; +=C2=A0 =C2=A0 =C2=A0IPMI_SEND_PANIC_EVENT_MAX<br>
&gt;=C2=A0 };<br>
<br>
This is a nice change.=C2=A0 Can you add a comment here so that readers kno=
w<br>
that the above enum and the following array are tied numerically?</blockquo=
te><div><br></div><div><br></div><div><br></div><div>Sure. I also add a pre=
fix.</div><div><br></div><div>=C2=A0</div><blockquote class=3D"gmail_quote"=
 style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
<br>
-corey<br>
<br>
&gt; +<br>
&gt; +static const char *const panic_event_str[] =3D { &quot;none&quot;, &q=
uot;event&quot;, &quot;string&quot;, NULL };<br>
&gt; +<br>
&gt;=C2=A0 #ifdef CONFIG_IPMI_PANIC_STRING<br>
&gt;=C2=A0 #define IPMI_PANIC_DEFAULT IPMI_SEND_PANIC_EVENT_STRING<br>
&gt;=C2=A0 #elif defined(CONFIG_IPMI_PANIC_<wbr>EVENT)<br>
&gt; @@ -68,46 +72,27 @@ static int panic_op_write_handler(const char *val,=
<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0const struct kernel_param *=
kp)<br>
&gt;=C2=A0 {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0char valcp[16];<br>
&gt; -=C2=A0 =C2=A0 =C2=A0char *s;<br>
&gt; -<br>
&gt; -=C2=A0 =C2=A0 =C2=A0strncpy(valcp, val, 15);<br>
&gt; -=C2=A0 =C2=A0 =C2=A0valcp[15] =3D &#39;\0&#39;;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0int e;<br>
&gt;=C2=A0 <br>
&gt; -=C2=A0 =C2=A0 =C2=A0s =3D strstrip(valcp);<br>
&gt; -<br>
&gt; -=C2=A0 =C2=A0 =C2=A0if (strcmp(s, &quot;none&quot;) =3D=3D 0)<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ipmi_send_panic_event=
 =3D IPMI_SEND_PANIC_EVENT_NONE;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0else if (strcmp(s, &quot;event&quot;) =3D=3D 0)<b=
r>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ipmi_send_panic_event=
 =3D IPMI_SEND_PANIC_EVENT;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0else if (strcmp(s, &quot;string&quot;) =3D=3D 0)<=
br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ipmi_send_panic_event=
 =3D IPMI_SEND_PANIC_EVENT_STRING;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0else<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return -EINVAL;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0strscpy(valcp, val, sizeof(valcp));<br>
&gt; +=C2=A0 =C2=A0 =C2=A0e =3D match_string(panic_event_str, -1, strstrip(=
valcp));<br>
&gt; +=C2=A0 =C2=A0 =C2=A0if (e &lt; 0)<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return e;<br>
&gt;=C2=A0 <br>
&gt; +=C2=A0 =C2=A0 =C2=A0ipmi_send_panic_event =3D e;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0return 0;<br>
&gt;=C2=A0 }<br>
&gt;=C2=A0 <br>
&gt;=C2=A0 static int panic_op_read_handler(char *buffer, const struct kern=
el_param *kp)<br>
&gt;=C2=A0 {<br>
&gt; -=C2=A0 =C2=A0 =C2=A0switch (ipmi_send_panic_event) {<br>
&gt; -=C2=A0 =C2=A0 =C2=A0case IPMI_SEND_PANIC_EVENT_NONE:<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0strcpy(buffer, &quot;=
none\n&quot;);<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0break;<br>
&gt; -<br>
&gt; -=C2=A0 =C2=A0 =C2=A0case IPMI_SEND_PANIC_EVENT:<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0strcpy(buffer, &quot;=
event\n&quot;);<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0break;<br>
&gt; -<br>
&gt; -=C2=A0 =C2=A0 =C2=A0case IPMI_SEND_PANIC_EVENT_STRING:<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0strcpy(buffer, &quot;=
string\n&quot;);<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0break;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0const char *event_str;<br>
&gt;=C2=A0 <br>
&gt; -=C2=A0 =C2=A0 =C2=A0default:<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0strcpy(buffer, &quot;=
???\n&quot;);<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0break;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0}<br>
&gt; +=C2=A0 =C2=A0 =C2=A0if (ipmi_send_panic_event &gt;=3D IPMI_SEND_PANIC=
_EVENT_MAX)<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0event_str =3D &quot;?=
??&quot;;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0else<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0event_str =3D panic_e=
vent_str[ipmi_send_<wbr>panic_event];<br>
&gt;=C2=A0 <br>
&gt; -=C2=A0 =C2=A0 =C2=A0return strlen(buffer);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0return sprintf(buffer, &quot;%s\n&quot;, event_st=
r);<br>
&gt;=C2=A0 }<br>
&gt;=C2=A0 <br>
&gt;=C2=A0 static const struct kernel_param_ops panic_op_ops =3D {<br>
&gt; -- <br>
&gt; 2.30.2<br>
&gt; <br>
</blockquote><br><br>-- <br>With Best Regards,<br>Andy Shevchenko<br><br><b=
r>

--00000000000082a1c405befe3fef--


--===============6820501977045632912==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============6820501977045632912==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

--===============6820501977045632912==--

