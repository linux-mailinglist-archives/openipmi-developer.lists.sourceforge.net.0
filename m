Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C673D28673F
	for <lists+openipmi-developer@lfdr.de>; Wed,  7 Oct 2020 20:29:41 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1kQEC4-00088G-16; Wed, 07 Oct 2020 18:29:40 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <broonie@kernel.org>) id 1kMyww-0008PE-3L
 for openipmi-developer@lists.sourceforge.net; Mon, 28 Sep 2020 19:36:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-Id:Subject:References:In-Reply-To:Cc:To:
 From:Date:Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Y2cesOtBZyvwoXgAyYslx9bc1XBRXpt6ntsjfu70WT8=; b=az82l+hwvsAtwjysk4coZu5lMr
 c2l9UWDJOgdkTh3tg61/MkhriPuJoxEAIL2E22kfvUapudEt091MAwoO2I3wZm4amo6geVNmx5tYa
 MAmW5q+Ks8QgMPDaGbRwgTBHQ1LvGGXJbA3CCdKO6u2/tncjRFlnYGwAdsHKhGNZfcY4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-Id:Subject:References:In-Reply-To:Cc:To:From:Date:Sender:Reply-To
 :MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Y2cesOtBZyvwoXgAyYslx9bc1XBRXpt6ntsjfu70WT8=; b=WQLGq4bC6hZRiKfb6Idbi/rLqt
 yb0aYMjGBc6pb2K1UaEbRiEmGQZGLgcBH2R1/hWvbdJvFUKxojc3xwahXbm8yHAEV5D6rP9Jsx74z
 /jxXHv0RixJbAtSeq7BE7AQGjsdpRLZMr8ahFSF4gXA+IqRvKH1yLueCZUQI4bB8ikbw=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kMywo-009Bil-Rd
 for openipmi-developer@lists.sourceforge.net; Mon, 28 Sep 2020 19:36:38 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0D39D2075F;
 Mon, 28 Sep 2020 19:36:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1601321780;
 bh=X+U7EekVVRNsGlr/phtz445aMUi09ZRhF69ImwLNLwc=;
 h=Date:From:To:Cc:In-Reply-To:References:Subject:From;
 b=MSJg7BXkVstJd9vEovsX824VHx5efOh2soe6NlPya2/aNU3Wc3OtyqBFwvECyCPua
 kUi8a23q4fCBu2VgEALElrnnXdhdIZWj/cHHL6OpzjwAEjLtK3yrynoHIRx/xkJWXh
 qlrSnak79xvF5ea0WZw11p7XzwmQGQMaoBfCsNic=
Date: Mon, 28 Sep 2020 20:35:23 +0100
From: Mark Brown <broonie@kernel.org>
To: linux-iio@vger.kernel.org, Julia Lawall <Julia.Lawall@inria.fr>
In-Reply-To: <1601233948-11629-1-git-send-email-Julia.Lawall@inria.fr>
References: <1601233948-11629-1-git-send-email-Julia.Lawall@inria.fr>
Message-Id: <160132172369.55460.9237357219623604216.b4-ty@kernel.org>
X-Spam-Score: -0.8 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1kMywo-009Bil-Rd
X-Mailman-Approved-At: Wed, 07 Oct 2020 18:29:26 +0000
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
Cc: linux-ide@vger.kernel.org, Valdis Klētnieks <valdis.kletnieks@vt.edu>, David Lechner <david@lechnology.com>, "Rafael J. Wysocki" <rafael@kernel.org>, Martin Blumenstingl <martin.blumenstingl@googlemail.com>, linux-wireless@vger.kernel.org, Neil Armstrong <narmstrong@baylibre.com>, kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org, linux-block@vger.kernel.org, linux-acpi@vger.kernel.org, Thomas Gleixner <tglx@linutronix.de>, linux-crypto@vger.kernel.org, Joe Perches <joe@perches.com>, linux-amlogic@lists.infradead.org, openipmi-developer@lists.sourceforge.net, drbd-dev@lists.linbit.com, linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org, Jerome Brunet <jbrunet@baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Sun, 27 Sep 2020 21:12:10 +0200, Julia Lawall wrote:
> These patches replace commas by semicolons.  This was done using the
> Coccinelle semantic patch (http://coccinelle.lip6.fr/) shown below.
> 
> This semantic patch ensures that commas inside for loop headers will not be
> transformed.  It also doesn't touch macro definitions.
> 
> Coccinelle ensures that braces are added as needed when a single-statement
> branch turns into a multi-statement one.
> 
> [...]

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/regmap.git for-next

Thanks!

[1/1] regmap: debugfs: use semicolons rather than commas to separate statements
      commit: 7f4a122d0b50b40c64d24a5cf7aafe26dd9487ee

All being well this means that it will be integrated into the linux-next
tree (usually sometime in the next 24 hours) and sent to Linus during
the next merge window (or sooner if it is a bug fix), however if
problems are discovered then the patch may be dropped or reverted.

You may get further e-mails resulting from automated or manual testing
and review of the tree, please engage with people reporting problems and
send followup patches addressing any issues that are reported if needed.

If any updates are required or you are submitting further changes they
should be sent as incremental updates against current git, existing
patches will not be replaced.

Please add any relevant lists and maintainers to the CCs when replying
to this mail.

Thanks,
Mark


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
