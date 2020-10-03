Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C96D286750
	for <lists+openipmi-developer@lfdr.de>; Wed,  7 Oct 2020 20:29:43 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1kQEC5-0008F8-Tj; Wed, 07 Oct 2020 18:29:41 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <julia.lawall@inria.fr>) id 1kOn3o-0006Zg-3I
 for openipmi-developer@lists.sourceforge.net; Sat, 03 Oct 2020 19:19:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:References:Message-ID:
 In-Reply-To:Subject:cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Fof8Uc10/Kjesl7YxvmH50R5vU8R4hJfR4KcoMcutHs=; b=TnlAmqXDrVu6mZfnH/HXb6Wcyi
 oQidcfjsoS3/ZUxZWy+MpnBfxoYdTt4LMftyXZmm+WQSkRFxTPMhndo+aWoWwYibm0YdZmXVecgQ+
 0hyzlIw+ofVWOADg7FrXxef15RurpEAGCnlQZsVcS6RG4NDPdRm2wGNTj+HDD4JQm9lc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:References:Message-ID:In-Reply-To:Subject:cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Fof8Uc10/Kjesl7YxvmH50R5vU8R4hJfR4KcoMcutHs=; b=MaEIBe6cO/G8GEEzUN4WYPPA5T
 lHmwmTAVCoQ9CrbiA5PJ9xOzNmo1b2GhMPR+ZFUEFNeLbuW7DkGWHAB2KvMFY4K6NvZrN9HgP+Kmz
 9L+6GKxdDtP72LpCqGJKrBH82ZAH6lKUemHXpsy+QUZ4nQg7v7+UdkGUsKVjocS85eMo=;
Received: from mail2-relais-roc.national.inria.fr ([192.134.164.83])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kOn3h-001Lsk-N5
 for openipmi-developer@lists.sourceforge.net; Sat, 03 Oct 2020 19:19:11 +0000
X-IronPort-AV: E=Sophos;i="5.77,332,1596492000"; d="scan'208";a="470811687"
Received: from abo-173-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.173])
 by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Oct 2020 21:18:51 +0200
Date: Sat, 3 Oct 2020 21:18:51 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
In-Reply-To: <20201003191501.o56tqq63d2buq5ox@chatter.i7.local>
Message-ID: <alpine.DEB.2.22.394.2010032118420.2741@hadrien>
References: <1601233948-11629-1-git-send-email-Julia.Lawall@inria.fr>
 <160132172369.55460.9237357219623604216.b4-ty@kernel.org>
 <b1174f9be2ce65f6b5ebefcba0b48e792926abbc.camel@perches.com>
 <20200929113745.GB4799@sirena.org.uk>
 <db26d49401dc0bd6b9013a603a155f9827f404a4.camel@perches.com>
 <20201001110150.GA6715@sirena.org.uk>
 <f44d19ad596f261c0287c9ab18c45161003efb43.camel@perches.com>
 <20201003191501.o56tqq63d2buq5ox@chatter.i7.local>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
MIME-Version: 1.0
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [192.134.164.83 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1kOn3h-001Lsk-N5
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
Cc: "Rafael J. Wysocki" <rafael@kernel.org>, linux-iio@vger.kernel.org,
 kernel-janitors@vger.kernel.org, linux-ide@vger.kernel.org,
 linux-clk@vger.kernel.org, drbd-dev@lists.linbit.com,
 Neil Armstrong <narmstrong@baylibre.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-acpi@vger.kernel.org,
 Jerome Brunet <jbrunet@baylibre.com>, David Lechner <david@lechnology.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-block@vger.kernel.org, Mark Brown <broonie@kernel.org>,
 linux-amlogic@lists.infradead.org, openipmi-developer@lists.sourceforge.net,
 linux-arm-kernel@lists.infradead.org,
 =?UTF-8?Q?Valdis_Kl=C4=93tnieks?= <valdis.kletnieks@vt.edu>,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 Julia Lawall <Julia.Lawall@inria.fr>, Thomas Gleixner <tglx@linutronix.de>,
 linux-crypto@vger.kernel.org, Joe Perches <joe@perches.com>,
 tools@linux.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net



On Sat, 3 Oct 2020, Konstantin Ryabitsev wrote:

> On Sat, Oct 03, 2020 at 11:40:48AM -0700, Joe Perches wrote:
> > (Adding tools and Konstantin Ryabitsev)
> >
> > There seems to be some mismatch between b4's use of the
> > cover letter to a patch series and what maintainers that
> > apply a subset of the patches in the patch series.
> >
> > The merge description shows the entire patch series as
> > applied, but the actual merge is only a subset of the
> > series.
> >
> > Can this be improved in b4?
>
> So, the following logic should be applied:
>
> - if the entire series was applied, reply to 0/n
> - if a subset only is applied, reply to each n/n of the patch that was
>   cherry-picked out of the series
>
> Is that an accurate summary?

That sounds good.

julia


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
