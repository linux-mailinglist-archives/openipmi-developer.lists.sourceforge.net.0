Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D6A1728674B
	for <lists+openipmi-developer@lfdr.de>; Wed,  7 Oct 2020 20:29:42 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1kQEC5-0008Ci-96; Wed, 07 Oct 2020 18:29:41 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <julia.lawall@inria.fr>) id 1kNF2l-0003I5-W8
 for openipmi-developer@lists.sourceforge.net; Tue, 29 Sep 2020 12:47:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:References:Message-ID:
 In-Reply-To:Subject:cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=SuIyYn/vWMrNClRjh9sSEQxKCtwZd44BRCSE+wBW9lI=; b=FsfapzpZE9D0qjvUuf+W9cIHrd
 3zB3R/PxZ9tyaoFC4Ygyoui6OW+PG7M8xdyccc7WxYe97J4qR3eFJFh5QxI9D25aF2eOt2wZkCsbI
 vG3osYGLCwT/CGBE/YoWlO86ghMo4i1t+FWDii361RbGSwOvktLu3ewEfVlYz30+Vh+4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:References:Message-ID:In-Reply-To:Subject:cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=SuIyYn/vWMrNClRjh9sSEQxKCtwZd44BRCSE+wBW9lI=; b=EhbkvytpKB1kBl8hav0I++eTBO
 JginFON6FPtwZKAN9izsJ1sxjr6O6OPezZzsJIEMkyiuyiEjGbA/097RbxovhdkIjs3xURu2nYNfh
 x4fy7DJ9Ss73b/fhaKxe64eoxeqG1Ah0DZMfIVWaLp5WTZVIJ1BzwSIj1BDZdlTr1k2s=;
Received: from mail2-relais-roc.national.inria.fr ([192.134.164.83])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kNF2e-00A4kt-SA
 for openipmi-developer@lists.sourceforge.net; Tue, 29 Sep 2020 12:47:43 +0000
X-IronPort-AV: E=Sophos;i="5.77,318,1596492000"; d="scan'208";a="470060117"
Received: from abo-173-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.173])
 by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Sep 2020 14:47:29 +0200
Date: Tue, 29 Sep 2020 14:47:29 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Dan Carpenter <dan.carpenter@oracle.com>
In-Reply-To: <20200929124108.GY4282@kadam>
Message-ID: <alpine.DEB.2.22.394.2009291445050.2808@hadrien>
References: <1601233948-11629-1-git-send-email-Julia.Lawall@inria.fr>
 <CAMj1kXGh+CzuXkAnqsoMO2A3T1p=D6uFOV347Ym5+VFn5U1gWg@mail.gmail.com>
 <20200929124108.GY4282@kadam>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
MIME-Version: 1.0
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: inria.fr]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [192.134.164.83 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1kNF2e-00A4kt-SA
X-Mailman-Approved-At: Wed, 07 Oct 2020 18:29:29 +0000
Subject: Re: [Openipmi-developer] [PATCH 00/18] use semicolons rather than
 commas to separate statements
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
Cc: Neil Armstrong <narmstrong@baylibre.com>, linux-iio@vger.kernel.org,
 kernel-janitors@vger.kernel.org, linux-ide@vger.kernel.org,
 linux-clk@vger.kernel.org, Jerome Brunet <jbrunet@baylibre.com>,
 "Rafael J. Wysocki" <rafael@kernel.org>,
 linux-stm32@st-md-mailman.stormreply.com,
 ACPI Devel Maling List <linux-acpi@vger.kernel.org>,
 Ard Biesheuvel <ardb@kernel.org>, David Lechner <david@lechnology.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-block@vger.kernel.org, drbd-dev@tron.linbit.com,
 linux-amlogic@lists.infradead.org, Thomas Gleixner <tglx@linutronix.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 =?UTF-8?Q?Valdis_Kl=C4=93tnieks?= <valdis.kletnieks@vt.edu>,
 linux-wireless@vger.kernel.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Julia Lawall <Julia.Lawall@inria.fr>,
 Linux Crypto Mailing List <linux-crypto@vger.kernel.org>,
 Joe Perches <joe@perches.com>, openipmi-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net



On Tue, 29 Sep 2020, Dan Carpenter wrote:

> On Tue, Sep 29, 2020 at 02:20:00PM +0200, Ard Biesheuvel wrote:
> > On Sun, 27 Sep 2020 at 21:56, Julia Lawall <Julia.Lawall@inria.fr> wrote:
> > >
> > > These patches replace commas by semicolons.
> >
> >
> > Why?
> >
>
> In the best case, these commas are just uninitentional mess, like typing
> an extra space character or something.  I've looked at them before and
> one case I see where they are introduced is when people convert a
> struct initializer to code.
>
> -	struct foo {
> -		.a = 1,
> -		.b = 2,
>  		...
> +	foo.a = 1,
> +	foo.b = 2,
>
> The times where commas are used deliberately to replace curly braces are
> just evil.  Either way the code is cleaner with semi-colons.

I also found exaamples like the following to be particularly unforunate:

                                fprintf(stderr,
                                        "page_nr %lu wrong count %Lu %Lu\n",
                                       page_nr, count,
                                       count_verify[page_nr]), exit(1);

The exit is very hard to see, unless you know to look for it.

julia


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
