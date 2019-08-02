Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 968F97EC56
	for <lists+openipmi-developer@lfdr.de>; Fri,  2 Aug 2019 07:51:48 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1htQTi-0003iN-LU; Fri, 02 Aug 2019 05:51:46 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <joel.stan@gmail.com>) id 1htQTg-0003i2-VA
 for openipmi-developer@lists.sourceforge.net; Fri, 02 Aug 2019 05:51:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=5ITQyJRBl7ht1TYk00a4jNJ9PbzaX8Bwy7nVWaA9ibU=; b=lPd/WT7NkK9OVTI7Uq3Kulfy/y
 qTYgFdIUNg96XB6wIu3AjyMzAjHv7rqXuwUSJveNBhS8J4j8vUCK5VrCiIkkvN9iiWYyvG5g3ywDd
 tdoHGhJbqrSg+mjvKj0p8XHpNSVMIQ2E07mG92w0sCgjogVXe8qvCvnwqkioByMkhIv4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=5ITQyJRBl7ht1TYk00a4jNJ9PbzaX8Bwy7nVWaA9ibU=; b=iCf/gp3xGEFyuEJ0nzaje3puLC
 J92qDpgL8f4rTQJQpo06IdyfPYfRhS3vI9z9epAuiqfBItYjx0k20nocfnZHhRIxQycRlvpx9fnFn
 YhC+mzKyyy9Mj9zgkobGzLxv10fgy/oYfaGUMUddcZ3v6hYogN4JTkj4S68OydcZLUFg=;
Received: from mail-qt1-f194.google.com ([209.85.160.194])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 id 1htQTc-006kn1-KW
 for openipmi-developer@lists.sourceforge.net; Fri, 02 Aug 2019 05:51:44 +0000
Received: by mail-qt1-f194.google.com with SMTP id h21so72723706qtn.13
 for <openipmi-developer@lists.sourceforge.net>;
 Thu, 01 Aug 2019 22:51:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jms.id.au; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=5ITQyJRBl7ht1TYk00a4jNJ9PbzaX8Bwy7nVWaA9ibU=;
 b=ZlXyZ6ztAsHkWX/gNtW3rbHVMXIy8YlD4tZkfmEg2K2GZWwrJbhbsffFVc4OaXLrg9
 4tTqk4gATmYjzkZBvV6sH+07OauO8iQOl7F9IrPpZzBS6Z/6Juf2gv2baaqlQJdyWdqq
 U2PcA4vf7asSgaO+0RaIZUlir57+Jn+ToB2VE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=5ITQyJRBl7ht1TYk00a4jNJ9PbzaX8Bwy7nVWaA9ibU=;
 b=J32Th16D9fLBxXYeBPo8wCcGAnDz0pd7A8FMnu81ePnzmUbfuRZS5jMBhZz0vQO7iW
 4ii4dFDQSdQChROoDrj9zUAB1sJWEwlHWczi05CkGF9gZAKYnpLZbHWKRwdnxUWmHhDu
 ec/0oPSHtpGTbQfGBcCIig2aC1GWikCn96SliPFopYNhfmTMUL6KMqoyXDPwOa7/p7Y8
 XjEkqIVECjEDDrGKBnFZJ3jWszOnujRJwgg7EK3QCgUO1PliZPW+AanTfQ9j4su6PqhF
 DunRYQmcmDVmyOLDv7KJ2HhWc72PVo+aDIJoDbvvTknkJHa8ZNjfGRx300gdyjX7+pi3
 4UWw==
X-Gm-Message-State: APjAAAXwezOXC4E7VaBslZJOGb8ATZjcimMhyOzPjN3Mk0qDGUzm9JbN
 oudhOQX5MY7ISNS4RdW/SlGSalOeCuasfyaORvQ=
X-Google-Smtp-Source: APXvYqxO7iXCAjOTakLYUnlXhbQV3QpIiWAYTjbetNNaVVixnu8M5TKpFH8tA3QT0jtpa2v4Vzycy56QBDbI0RnB0tU=
X-Received: by 2002:a05:6214:1306:: with SMTP id
 a6mr97854130qvv.38.1564725094592; 
 Thu, 01 Aug 2019 22:51:34 -0700 (PDT)
MIME-Version: 1.0
References: <20190726053959.2003-1-andrew@aj.id.au>
 <CAL_JsqJ+sFDG8eKbV3gvmqVHx+otWbki4dY213apzXgfhbXXEw@mail.gmail.com>
 <fd8e57f0-aee2-403e-b6fb-76d0c18fe306@www.fastmail.com>
In-Reply-To: <fd8e57f0-aee2-403e-b6fb-76d0c18fe306@www.fastmail.com>
From: Joel Stanley <joel@jms.id.au>
Date: Fri, 2 Aug 2019 05:51:23 +0000
Message-ID: <CACPK8Xc4Vigeu1B1Su5392BSCSKfoEDqt_tiDtgKmNH5ucAvAg@mail.gmail.com>
To: Andrew Jeffery <andrew@aj.id.au>
X-Spam-Score: 0.2 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (joel.stan[at]gmail.com)
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: jms.id.au]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.160.194 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.194 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
X-Headers-End: 1htQTc-006kn1-KW
Subject: Re: [Openipmi-developer] [RFC-ish PATCH 00/17] Clean up ASPEED
 devicetree warnings
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
Cc: Mark Rutland <mark.rutland@arm.com>, linux-aspeed@lists.ozlabs.org,
 Linus Walleij <linus.walleij@linaro.org>, Corey Minyard <minyard@acm.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 devicetree <devicetree@vger.kernel.org>, Xo Wang <xow@google.com>,
 Arnd Bergmann <arnd@arndb.de>, Ken Chen <chen.kenyy@inventec.com>,
 Adriana Kobylak <anoo@us.ibm.com>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 =?UTF-8?B?WWFuZ0JyaWFuQy5XIOaliuWYieWBiSBUQU8=?= <yang.brianc.w@inventec.com>,
 openipmi-developer@lists.sourceforge.net,
 "Alexander A. Filippov" <a.filippov@yadro.com>, Tao Ren <taoren@fb.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 yao.yuan@linaro.org, Patrick Venture <venture@google.com>,
 John Wang <wangzqbj@inspur.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Stefan M Schaeckeler <sschaeck@cisco.com>,
 Haiyue Wang <haiyue.wang@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Tue, 30 Jul 2019 at 01:09, Andrew Jeffery <andrew@aj.id.au> wrote:

> > > The bang-for-buck is in fixing up the KCS bindings which removes all-but-two of
> > > the remaining warnings (which we can't feasibly remove), but doing so forces
> > > code changes (which I'd avoided up until this point).
> > >
> > > Reflecting broadly on the fixes, I think I've made a mistake way back by using
> > > syscon/simple-mfds to expose the innards of the SCU and LPC controllers in the
> > > devicetree. This series cleans up what's currently there, but I have half a
> > > mind to rev the SCU and LPC bindings to not use simple-mfd and instead have a
> > > driver implementation that uses `platform_device_register_full()` or similar to
> > > deal with the mess.
> > >
> > > Rob - I'm looking for your thoughts here and on the series, I've never felt
> > > entirely comfortable with what I cooked up. Your advice would be appreciated.
> >
> > The series generally looks fine to me from a quick scan. As far as
> > dropping 'simple-mfd', having less fine grained description in DT is
> > generally my preference. It comes down to whether what you have
> > defined is maintainable. As most of it is just additions, I think what
> > you have is fine. Maybe keep all this in mind for the next chip
> > depending how the SCU and LPC change.
>
> Okay, I think the timing of that suggestion is good given where things are with
> the AST2600. I'll keep that in mind.
>
> Consensus so far seems to be that the series is fine. I'll split it up and send out
> the sub-series to the relevant lists with the acks accumulated here.

The series look good. I suggest posting the KCS bindings and driver
changes as their own series to go through the IPMI tree.

Please add my tag to all the patches except the OCC one, which I need
to do some investigation in to.

Reviewed-by: Joel Stanley <joel@jms.id.au>

The others can go via the aspeed tree. Perhaps post them as their own
series too so I don't get confused and apply the wrong ones. That way
if Rob wants to send his reviewed-by he can.

Cheers,

Joel


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
