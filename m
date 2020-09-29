Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CAC1428674A
	for <lists+openipmi-developer@lfdr.de>; Wed,  7 Oct 2020 20:29:42 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1kQEC5-0008CM-5q; Wed, 07 Oct 2020 18:29:41 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <julia.lawall@inria.fr>) id 1kNEzz-0001sp-PM
 for openipmi-developer@lists.sourceforge.net; Tue, 29 Sep 2020 12:44:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:References:Message-ID:
 In-Reply-To:Subject:cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=mmE6oyYdECbr5Lc294XVbWDBQqcPRDGze+6GLC3Mq5E=; b=GQpx0mNz2R8dxpl/15Mujk5YTV
 LA9OAckELaLgUkL0cdTOc0FYJs2FujsuECeIS640j4RFdr9feJzYz6ToIzDJrQne0xKW8WAjnv0Jn
 4nho15F+g1DMEEputI/mgogG0ZQ5G6kf0VU5Oe2Ss2lnQh2m74yA9ihGxbyImqfaXwqU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:References:Message-ID:In-Reply-To:Subject:cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=mmE6oyYdECbr5Lc294XVbWDBQqcPRDGze+6GLC3Mq5E=; b=ZDdWgwg8TP2kOAYgiMWA8/khKT
 WoPLWlt9YOOIZMyyrXQrNi1WzqMteWPOV4Pa1omvFHkrSdqtIXYl2AyMRfCq8QfzIG5rcTW1QN/Nf
 mbA5FvVAUIk2tlC1lR6NENBSWQT7zeH+9TALbpEjv8ZFQ6ZKHHIJAjk24ILjkHX52Oy0=;
Received: from mail2-relais-roc.national.inria.fr ([192.134.164.83])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kNEzr-00A4Z5-Ty
 for openipmi-developer@lists.sourceforge.net; Tue, 29 Sep 2020 12:44:51 +0000
X-IronPort-AV: E=Sophos;i="5.77,318,1596492000"; d="scan'208";a="470059088"
Received: from abo-173-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.173])
 by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Sep 2020 14:44:29 +0200
Date: Tue, 29 Sep 2020 14:44:29 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Mark Brown <broonie@kernel.org>
In-Reply-To: <20200929123734.GC4799@sirena.org.uk>
Message-ID: <alpine.DEB.2.22.394.2009291441530.2808@hadrien>
References: <1601233948-11629-1-git-send-email-Julia.Lawall@inria.fr>
 <160132172369.55460.9237357219623604216.b4-ty@kernel.org>
 <b1174f9be2ce65f6b5ebefcba0b48e792926abbc.camel@perches.com>
 <20200929113745.GB4799@sirena.org.uk>
 <alpine.DEB.2.22.394.2009291344590.2808@hadrien>
 <20200929123734.GC4799@sirena.org.uk>
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
X-Headers-End: 1kNEzr-00A4Z5-Ty
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
 linux-block@vger.kernel.org, linux-amlogic@lists.infradead.org,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 =?UTF-8?Q?Valdis_Kl=C4=93tnieks?= <valdis.kletnieks@vt.edu>,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 Julia Lawall <julia.lawall@inria.fr>, linux-crypto@vger.kernel.org,
 Joe Perches <joe@perches.com>, openipmi-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net



On Tue, 29 Sep 2020, Mark Brown wrote:

> On Tue, Sep 29, 2020 at 01:46:19PM +0200, Julia Lawall wrote:
> > On Tue, 29 Sep 2020, Mark Brown wrote:
>
> > > Feel free to submit patches to b4.  Ideally things like this wouldn't be
> > > being sent as serieses in the first place, there's no dependencies or
> > > interactions between the patches.
>
> > It was suggested (a long time ago, not with respect to this patch in
> > particular) that sending such patches in a series is useful because it
> > allows people who are not interested in the 18 patches to skip over them
> > more easily.  So there are two conflicting needs...
>
> I'm not convinced that there are huge numbers of people reading LKML as
> a list TBH, and if you are sending things as a series then the way
> you're doing it at the minute where you don't CC the cover letter to
> people makes things confusing as it's unclear if there are dependencies
> to worry about.

The cover letter goes to all of the specific mailing lists affected by the
patch, or if there is no list, then to at least one developer.  Sending
the cover letter to everyone would lead to too many recipients for some
lists.

If there is a preference for the rest of these patches to be sent one by
one, then that is possible.

julia


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
