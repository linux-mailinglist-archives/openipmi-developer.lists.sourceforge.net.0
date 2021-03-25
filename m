Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EF273487F1
	for <lists+openipmi-developer@lfdr.de>; Thu, 25 Mar 2021 05:37:25 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1lPHkI-0003nC-Mf; Thu, 25 Mar 2021 04:37:22 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <mnshsnghl@gmail.com>) id 1lPHkH-0003mu-30
 for openipmi-developer@lists.sourceforge.net; Thu, 25 Mar 2021 04:37:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=fIEZpqY1T61Z46RjLCjiWh15JuUrBjiGdy02U3quqfo=; b=JhOgt3mfO3OYgsjFcjoubywPBc
 qU0Ck/xHYHmLDpJyfiCIHcDJGnx0HU6+iHzY/l67WxIZZFEF+4wiDEOIOk9x1WQfEQSDMi2dPujxl
 YP2PfPM0WUCX3NZgG00brdZipzOtSNcUBnkDor2bQI1k166/4mGOC6aeHkz3ORzfDI68=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=fIEZpqY1T61Z46RjLCjiWh15JuUrBjiGdy02U3quqfo=; b=cjJzdnp2/g9kNlBi1VAsD8UDW6
 w/W4c6FAuT3lZ8wEsZHvnNCtgoGA2Mu/xxXZGcVQLowsndq5bPcrc09XEOM+z1S3hH1tWWQ+602Sy
 PwFcxRg/5Jx5ucL2rlenUAM+VM+AfBmhSoazPHq+a4byqZ1SvlRN6eZdzjtq2MqwQjjQ=;
Received: from mail-qk1-f176.google.com ([209.85.222.176])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1lPHkC-0000xD-4R
 for openipmi-developer@lists.sourceforge.net; Thu, 25 Mar 2021 04:37:20 +0000
Received: by mail-qk1-f176.google.com with SMTP id v70so609307qkb.8
 for <openipmi-developer@lists.sourceforge.net>;
 Wed, 24 Mar 2021 21:37:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=fIEZpqY1T61Z46RjLCjiWh15JuUrBjiGdy02U3quqfo=;
 b=YiHP1gC8MPmeEO664SzQgSMopdMAKb8oHbzNxVdnhIWv9+HqAWVUOahxff6SiCwDke
 KRTK48kqRpQCTJ8MoezD0THAglSvg9iN/7QnXSi/2UEC8tib4fovZiJ8UdiUdqVcMpqO
 uMpCfLZSEWgLjS7hmrmwgukLELNBXLyWuUUQyNqMa/xtQyOh489mHQU4FdxrbRDdfh0Q
 UiNh3OIj1Ewn4W2g1oGjIpCkvWDsiUhtmsSaskyw/aAK8BEEdS0Yo5jFKNiMXVFA0C9H
 Lpf+tJ6xeq0mKE90mZPJLnWqGgmxu+jL0ImGvE5dRUZ+7DF7IgdMvnD7qbLjsvpW6JnI
 Gl+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=fIEZpqY1T61Z46RjLCjiWh15JuUrBjiGdy02U3quqfo=;
 b=mNda9Bib30WxBQYP2znQor9oIH8XYOyNxsbc1zPTFBAkmt2lyJQK7oTbwrTViwLcUI
 CsYJce+mwVUZ2/HfK/I/WEFKdmNgtLFpcwkMyt9o78FRmRKHQ41fQLTae4hdZOkLLqvm
 GbfJ1wUrV7g5P2/CBXIf014G5YE8ukDoAC+q9Vk6nCoqmqZqcMgg2q1L/7NK1sU63h8g
 l7jFpNNqjMSAZ755idIqgwiEGJZMsqGuxjzi2bEtzzkFm3PkwiWXi9kNwyL8IetSzKGP
 pUOvu+2BZnUjZv1qkjRmHIrbaKPXcXmfmSlMNUN9Ocd6v8ujUtb+5dswCzbQUvOYcbYa
 sOtQ==
X-Gm-Message-State: AOAM532cjNorfTQ/uUvqfR9NNnPvud3ye7Y2BO2qxK4ujjWEReeTvraI
 yB4MFc1jnM0XCVTcTgfQhew5Kjmij7KkBunQekY=
X-Google-Smtp-Source: ABdhPJyPdzgd3t/K7/xzgR3mIuNOSYcTzFd5HgxMZn45PcxPRBZY1qfsoSk20ZmcwPnU+4dm6rnz7i6+kZi1cyP6Xk0=
X-Received: by 2002:a37:b103:: with SMTP id a3mr6579955qkf.261.1616647030363; 
 Wed, 24 Mar 2021 21:37:10 -0700 (PDT)
MIME-Version: 1.0
References: <CAMp8WcrSvfm8445aGnE5AJ+qPB7OQB+PUL5ugCDfcvD6m=jBBg@mail.gmail.com>
 <20210325040722.GL507977@minyard.net>
In-Reply-To: <20210325040722.GL507977@minyard.net>
From: Maneesh Singhal <mnshsnghl@gmail.com>
Date: Thu, 25 Mar 2021 10:07:00 +0530
Message-ID: <CAMp8WcoC5Z7iwEVgtO_b0f3QdJ7ay4g4GqkyrZVG5w3C5W8YDw@mail.gmail.com>
To: minyard@acm.org
X-Spam-Score: 0.9 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (mnshsnghl[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.222.176 listed in list.dnswl.org]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: acm.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.176 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1lPHkC-0000xD-4R
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
Content-Type: multipart/mixed; boundary="===============8955258780847657983=="
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

--===============8955258780847657983==
Content-Type: multipart/alternative; boundary="000000000000f8d9fb05be54f7e5"

--000000000000f8d9fb05be54f7e5
Content-Type: text/plain; charset="UTF-8"

Thanks for responding Corey. Actually I figured out what was the issue. The
password that got passed was wrong due to programmatic error, but then I
was assuming IPMI library to return me authentication kind of error instead
of timeout. Isnt that correct expectation ?

Thanks

On Thu, Mar 25, 2021 at 9:37 AM Corey Minyard <minyard@acm.org> wrote:

> On Wed, Mar 24, 2021 at 08:08:05PM +0530, Maneesh Singhal wrote:
> > Hello Team
> >
> > We built our code based on ipmicmd.c (The ipmi specifics are all same).
> The
> > commands that we are using are Power On (0x01) and Power Off (0x00) and
> we
> > are facing 16777411 error which I believe is timeout error.
> > I tried debugging it through, but no success how and where I am getting
> > timeout. Moreover, I rebooted the host multiple times, and still the
> > problem persists.
>
> I assume you can issue these commands successfully with ipmicmd?
>
> -corey
>

--000000000000f8d9fb05be54f7e5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks for responding Corey. Actually I figured out what w=
as the issue. The password that got passed was wrong due to programmatic er=
ror, but then I was assuming IPMI library to return me authentication kind =
of error instead of timeout. Isnt that correct expectation ?<div><br></div>=
<div>Thanks</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" clas=
s=3D"gmail_attr">On Thu, Mar 25, 2021 at 9:37 AM Corey Minyard &lt;<a href=
=3D"mailto:minyard@acm.org">minyard@acm.org</a>&gt; wrote:<br></div><blockq=
uote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1p=
x solid rgb(204,204,204);padding-left:1ex">On Wed, Mar 24, 2021 at 08:08:05=
PM +0530, Maneesh Singhal wrote:<br>
&gt; Hello Team<br>
&gt; <br>
&gt; We built our code based on ipmicmd.c (The ipmi specifics are all same)=
. The<br>
&gt; commands that we are using are Power On (0x01) and Power Off (0x00) an=
d we<br>
&gt; are facing 16777411 error which I believe is timeout error.<br>
&gt; I tried debugging it through, but no success how and where I am gettin=
g<br>
&gt; timeout. Moreover, I rebooted the host multiple times, and still the<b=
r>
&gt; problem persists.<br>
<br>
I assume you can issue these commands successfully with ipmicmd?<br>
<br>
-corey<br>
</blockquote></div>

--000000000000f8d9fb05be54f7e5--


--===============8955258780847657983==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============8955258780847657983==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

--===============8955258780847657983==--

