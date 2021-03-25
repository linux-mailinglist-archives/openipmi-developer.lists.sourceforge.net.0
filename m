Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 585CA348956
	for <lists+openipmi-developer@lfdr.de>; Thu, 25 Mar 2021 07:48:46 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1lPJnO-0005TK-EX; Thu, 25 Mar 2021 06:48:42 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <mnshsnghl@gmail.com>) id 1lPJnM-0005T8-GV
 for openipmi-developer@lists.sourceforge.net; Thu, 25 Mar 2021 06:48:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=YkHwzVkjW8LqNZpWD0URd1opYFczBCcoA/QkNyYlbYk=; b=fjwzP+Gjqnb8jHAxK14Y04renL
 XTtG0eCgnTP+LTh9ybHwy/jNTcHwSdun4a9FEZlXAsIxSG+eOD88mwv47Tl6e1VN89SnJhQ3PcEQU
 N4GvQQ41/yydQv/pby2hr0nxSuP55dEStZIAic/yHLHptPT4nqtCq64gb6QHI8w6iWTU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=YkHwzVkjW8LqNZpWD0URd1opYFczBCcoA/QkNyYlbYk=; b=hDyS7ykHAvjYSQoxdwyeJOIY6f
 WJ5RxKiQgSfuIkWNokLoxRH19xZx2y+HQjaC/DLe2gte6O/FjyA8NQiymVVqJgc/gQhbaeixEQeYe
 l8MqSnsclOsehn4hRVkupsbYRQVVkDiGaFf4nwRTGICBYmlCaL8TeunDdNdt7jVCWlMQ=;
Received: from mail-qk1-f177.google.com ([209.85.222.177])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1lPJnC-0005Fb-Rp
 for openipmi-developer@lists.sourceforge.net; Thu, 25 Mar 2021 06:48:40 +0000
Received: by mail-qk1-f177.google.com with SMTP id o5so864754qkb.0
 for <openipmi-developer@lists.sourceforge.net>;
 Wed, 24 Mar 2021 23:48:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=YkHwzVkjW8LqNZpWD0URd1opYFczBCcoA/QkNyYlbYk=;
 b=cDBXg7MQmyYE53Qlh2XhKVtHNI9KzMPjIHTPoh6PrZDtR4SmRfrRPSVVImxFqxDb75
 +LjA2jF+cmmioxZayon2K0GASxso7S1KSSU+ipDChSsBehCPKRhjyq1qfku2yhChLG7E
 PemasSzuKc44k8r0F6v21AW/mxY/GYsSu9R/krPss/GAD7gO7nG7zpaKZo6hEH3gXAbB
 oeiqBwKdgO8iEt4/c9bzGhJdm6cprliN3VmHeFOvaHqT6GB4x5vnyL3sN+3St+JWELdO
 RueBHIyWrOm8+y5YQVuKjE5SZg1vxAqOjWr22Ue2BBI1tjE14bNT+YQ6l6TFkZRFsRcM
 HzgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=YkHwzVkjW8LqNZpWD0URd1opYFczBCcoA/QkNyYlbYk=;
 b=EvZtPWx7ctaqMAq12lOaIl4/TG48ITKMkT3frgEoFUnc5ZnUuZwoAiX4gKYvNka5A6
 n8bwYxYlQpZzpHhE4kfBlCMc9zC6vd2D76YNbpg570SzrrJY6NqnkgjvORtjSO7Xibh4
 r1stLLKG4m+x1b+YxWnB7QD8xFDUBzdwXF8gX+36LmKHyB/nqtQnBbpTGIUMTkLIGqYB
 NL3tleUuNd8QJW1/ORCUvRem8QmViOYnSyV7WXhn0/GDSygg04u14NNfhJsUEcbKnGyv
 a8vPn2IFnIiG6UvLfv01L3Sgqt9HfIHE1gIDBk/m3MkzboJl0XSfCzQFrgPL7PW+Sqek
 qbkQ==
X-Gm-Message-State: AOAM533hCg0j7ttCpFLl3Eg88X/XFLEI3DajY8TCrVMrnR+/m0CWgQFA
 eID4lx6IgkTly4SBeShUWN8gIiJgcR9qwKwd0MX7ts4EnvGYyQ==
X-Google-Smtp-Source: ABdhPJyZMssquVSqY0avMhQe1jl+3iJlTTMjQPnnYuQZJ65RIHTuS7P/cxQaBUXnKnCDkyiRLgRw1XyjlNG2XZZHObg=
X-Received: by 2002:a37:94b:: with SMTP id 72mr6637728qkj.94.1616654905053;
 Wed, 24 Mar 2021 23:48:25 -0700 (PDT)
MIME-Version: 1.0
References: <CAMp8WcrSvfm8445aGnE5AJ+qPB7OQB+PUL5ugCDfcvD6m=jBBg@mail.gmail.com>
 <20210325040722.GL507977@minyard.net>
 <CAMp8WcoC5Z7iwEVgtO_b0f3QdJ7ay4g4GqkyrZVG5w3C5W8YDw@mail.gmail.com>
 <20210325044610.GM507977@minyard.net>
In-Reply-To: <20210325044610.GM507977@minyard.net>
From: Maneesh Singhal <mnshsnghl@gmail.com>
Date: Thu, 25 Mar 2021 12:18:13 +0530
Message-ID: <CAMp8WcrD7DcE0f66cfUmLmj=Fz65Vs2Qh42ph37Q3b-xEYkkTQ@mail.gmail.com>
To: minyard@acm.org
X-Spam-Score: 0.9 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (mnshsnghl[at]gmail.com)
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: acm.org]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.222.177 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.177 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1lPJnC-0005Fb-Rp
Subject: Re: [Openipmi-developer] Getting 16777411 (Timeout) error from IPMI
 code
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
Content-Type: multipart/mixed; boundary="===============5122342322108864710=="
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

--===============5122342322108864710==
Content-Type: multipart/alternative; boundary="0000000000005715a905be56cd44"

--0000000000005715a905be56cd44
Content-Type: text/plain; charset="UTF-8"

Ok, thanks for the clarification.

Regards

On Thu, Mar 25, 2021 at 10:16 AM Corey Minyard <minyard@acm.org> wrote:

> On Thu, Mar 25, 2021 at 10:07:00AM +0530, Maneesh Singhal wrote:
> > Thanks for responding Corey. Actually I figured out what was the issue.
> The
> > password that got passed was wrong due to programmatic error, but then I
> > was assuming IPMI library to return me authentication kind of error
> instead
> > of timeout. Isnt that correct expectation ?
>
> It depends.  I think most BMCs will ignore packets with authentication
> issues, so the client can't tell if it's a password issue or a
> non-existent BMC.
>
> -corey
>
> >
> > Thanks
> >
> > On Thu, Mar 25, 2021 at 9:37 AM Corey Minyard <minyard@acm.org> wrote:
> >
> > > On Wed, Mar 24, 2021 at 08:08:05PM +0530, Maneesh Singhal wrote:
> > > > Hello Team
> > > >
> > > > We built our code based on ipmicmd.c (The ipmi specifics are all
> same).
> > > The
> > > > commands that we are using are Power On (0x01) and Power Off (0x00)
> and
> > > we
> > > > are facing 16777411 error which I believe is timeout error.
> > > > I tried debugging it through, but no success how and where I am
> getting
> > > > timeout. Moreover, I rebooted the host multiple times, and still the
> > > > problem persists.
> > >
> > > I assume you can issue these commands successfully with ipmicmd?
> > >
> > > -corey
> > >
>

--0000000000005715a905be56cd44
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Ok, thanks for the clarification.=C2=A0<br><div><br></div>=
<div>Regards</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" cla=
ss=3D"gmail_attr">On Thu, Mar 25, 2021 at 10:16 AM Corey Minyard &lt;<a hre=
f=3D"mailto:minyard@acm.org">minyard@acm.org</a>&gt; wrote:<br></div><block=
quote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1=
px solid rgb(204,204,204);padding-left:1ex">On Thu, Mar 25, 2021 at 10:07:0=
0AM +0530, Maneesh Singhal wrote:<br>
&gt; Thanks for responding Corey. Actually I figured out what was the issue=
. The<br>
&gt; password that got passed was wrong due to programmatic error, but then=
 I<br>
&gt; was assuming IPMI library to return me authentication kind of error in=
stead<br>
&gt; of timeout. Isnt that correct expectation ?<br>
<br>
It depends.=C2=A0 I think most BMCs will ignore packets with authentication=
<br>
issues, so the client can&#39;t tell if it&#39;s a password issue or a<br>
non-existent BMC.<br>
<br>
-corey<br>
<br>
&gt; <br>
&gt; Thanks<br>
&gt; <br>
&gt; On Thu, Mar 25, 2021 at 9:37 AM Corey Minyard &lt;<a href=3D"mailto:mi=
nyard@acm.org" target=3D"_blank">minyard@acm.org</a>&gt; wrote:<br>
&gt; <br>
&gt; &gt; On Wed, Mar 24, 2021 at 08:08:05PM +0530, Maneesh Singhal wrote:<=
br>
&gt; &gt; &gt; Hello Team<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; We built our code based on ipmicmd.c (The ipmi specifics are=
 all same).<br>
&gt; &gt; The<br>
&gt; &gt; &gt; commands that we are using are Power On (0x01) and Power Off=
 (0x00) and<br>
&gt; &gt; we<br>
&gt; &gt; &gt; are facing 16777411 error which I believe is timeout error.<=
br>
&gt; &gt; &gt; I tried debugging it through, but no success how and where I=
 am getting<br>
&gt; &gt; &gt; timeout. Moreover, I rebooted the host multiple times, and s=
till the<br>
&gt; &gt; &gt; problem persists.<br>
&gt; &gt;<br>
&gt; &gt; I assume you can issue these commands successfully with ipmicmd?<=
br>
&gt; &gt;<br>
&gt; &gt; -corey<br>
&gt; &gt;<br>
</blockquote></div>

--0000000000005715a905be56cd44--


--===============5122342322108864710==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============5122342322108864710==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

--===============5122342322108864710==--

