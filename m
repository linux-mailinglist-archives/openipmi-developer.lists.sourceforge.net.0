Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EB0163123C
	for <lists+openipmi-developer@lfdr.de>; Sun, 20 Nov 2022 03:09:25 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1owZlm-00048R-Iv;
	Sun, 20 Nov 2022 02:09:18 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <patchwork-bot+chrome-platform@kernel.org>)
 id 1owHgG-0007Xz-OQ for openipmi-developer@lists.sourceforge.net;
 Sat, 19 Nov 2022 06:50:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:In-Reply-To:References:Date:Message-Id:From:
 Subject:Content-Transfer-Encoding:MIME-Version:Content-Type:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=p5Cm9tofySsgPqPjzqDwEp+qepQChwMTn6kYJ5SiIzQ=; b=KD9ds7S5qJs/Qrd+dbV2LxktD4
 XBbi34NsgVr0SGDkfEsXbrD+4wUM3ngOFEO96fErNPCPE79o5OHDWr7JjjQOi7ITr3nAwYN31hGBZ
 5Lo7vYTOj4o/DepHMirKBkXrcES/6JRE7sYDOEXlTogYdwCucsnifIj/YGuvwFFEjI/Y=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ; h=Cc:To:In-Reply-To:References:Date:Message-Id:From:Subject:
 Content-Transfer-Encoding:MIME-Version:Content-Type:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=p5Cm9tofySsgPqPjzqDwEp+qepQChwMTn6kYJ5SiIzQ=; b=i1xYOJnpLK4Y+r+1tXhnev+p/H
 k+VdmBIkmR7Sg6oOswREvTmSpTuXBfNE9NvRFJ2ut/1cRtztBw9nIKn9ANcWdBH+aidsOoyevNbwG
 K9QmupQDXj5BTGdUVlPq0Md65KQTxDMqxun1aevn38g2jre0WcAC8KC7pRxRFSCZXLY0=;
Received: from ams.source.kernel.org ([145.40.68.75])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1owHgG-00055L-27 for openipmi-developer@lists.sourceforge.net;
 Sat, 19 Nov 2022 06:50:24 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id B256EB82713;
 Sat, 19 Nov 2022 06:50:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 5944BC433D6;
 Sat, 19 Nov 2022 06:50:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1668840616;
 bh=ak6M5fgrTHQ1MM2vf+n5AubLq+AMYqmK/RRzz3/3gig=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=seXipkg9CAyFA9/DRpiD01V8ITXAB4g0Feuk+M72plAUXo40561rs1dMVurztjC0R
 UGqXlOdf3JC5VrI2IWVezRWqsbHRKhLTyD3mEBicEAh2WBWvOY+SAmQ5aoJgjdz1Vk
 5aq4YUvgNncdPRSw5IsP6xY0s8PudX8SdTsR/EyWyOmZxNi+pkZtOu70losD9BrvnB
 Du21LerJzoVvVs4d9eSLNMvDcUU7T0jOw29zyRduMgSnRBWCRcfu03u6uXJN2UHbLy
 DMpzJwBt86Z35Odc5hTd6y/3r7eqH4zheZmOWuKtOuYVHcjUBHn5l00sWabdAIfdsG
 FRNiHf2EtKUDg==
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org
 (localhost.localdomain [127.0.0.1])
 by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id
 37F78E29F44; Sat, 19 Nov 2022 06:50:16 +0000 (UTC)
MIME-Version: 1.0
From: patchwork-bot+chrome-platform@kernel.org
Message-Id: <166884061622.19423.870710096225259467.git-patchwork-notify@kernel.org>
Date: Sat, 19 Nov 2022 06:50:16 +0000
References: <20221118224540.619276-1-uwe@kleine-koenig.org>
In-Reply-To: <20221118224540.619276-1-uwe@kleine-koenig.org>
To: =?utf-8?q?Uwe_Kleine-K=C3=B6nig_=3Cuwe=40kleine-koenig=2Eorg=3E?=@ci.codeaurora.org
X-Spam-Score: -5.9 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello: This patch was applied to chrome-platform/linux.git
 (for-kernelci) by Tzung-Bi Shih <tzungbi@kernel.org>: On Fri, 18 Nov 2022
 23:35:34 +0100 you wrote: > Hello, > > since commit b8a1a4cd5a98 ("i2c: Provide
 a temporary .probe_new() > call-back type") from 2016 there is a "temporary"
 alternative probe > cal [...] 
 Content analysis details:   (-5.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [145.40.68.75 listed in list.dnswl.org]
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1owHgG-00055L-27
X-Mailman-Approved-At: Sun, 20 Nov 2022 02:09:17 +0000
Subject: Re: [Openipmi-developer] [PATCH 000/606] i2c: Complete conversion
 to i2c_probe_new
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
Cc: alsa-devel@alsa-project.org, linux-staging@lists.linux.dev,
 linux-pwm@vger.kernel.org, linux-iio@vger.kernel.org,
 linux-fbdev@vger.kernel.org, platform-driver-x86@vger.kernel.org,
 linux-mtd@lists.infradead.org, linux-i2c@vger.kernel.org, lee.jones@linaro.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-leds@vger.kernel.org,
 linux-rtc@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
 linux-samsung-soc@vger.kernel.org, linux-pm@vger.kernel.org,
 bcm-kernel-feedback-list@broadcom.com, linux-serial@vger.kernel.org,
 linux-input@vger.kernel.org, grant.likely@linaro.org,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-watchdog@vger.kernel.org, chrome-platform@lists.linux.dev,
 linux-actions@lists.infradead.org, linux-gpio@vger.kernel.org,
 ang.iglesiasg@gmail.com, linux-rpi-kernel@lists.infradead.org,
 linux-amlogic@lists.infradead.org, openipmi-developer@lists.sourceforge.net,
 linux-omap@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 kernel@puri.sm, patches@opensource.cirrus.com, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-spi@vger.kernel.org, wsa@kernel.org,
 linux-crypto@vger.kernel.org, kernel@pengutronix.de, netdev@vger.kernel.org,
 linux-integrity@vger.kernel.org, linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

Hello:

This patch was applied to chrome-platform/linux.git (for-kernelci)
by Tzung-Bi Shih <tzungbi@kernel.org>:

On Fri, 18 Nov 2022 23:35:34 +0100 you wrote:
> Hello,
> 
> since commit b8a1a4cd5a98 ("i2c: Provide a temporary .probe_new()
> call-back type") from 2016 there is a "temporary" alternative probe
> callback for i2c drivers.
> 
> This series completes all drivers to this new callback (unless I missed
> something). It's based on current next/master.
> A part of the patches depend on commit 662233731d66 ("i2c: core:
> Introduce i2c_client_get_device_id helper function"), there is a branch that
> you can pull into your tree to get it:
> 
> [...]

Here is the summary with links:
  - [512/606] platform/chrome: cros_ec: Convert to i2c's .probe_new()
    https://git.kernel.org/chrome-platform/c/f9e510dc92df

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html




_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
