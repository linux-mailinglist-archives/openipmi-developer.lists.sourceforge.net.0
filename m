Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E2C13639AEF
	for <lists+openipmi-developer@lfdr.de>; Sun, 27 Nov 2022 14:16:15 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1ozHVy-0001wI-I3;
	Sun, 27 Nov 2022 13:16:10 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <andriy.shevchenko@intel.com>) id 1oyxLh-0007NW-QL
 for openipmi-developer@lists.sourceforge.net;
 Sat, 26 Nov 2022 15:44:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=4Bb3Zb7auvgMvZAuE4484XNN8xPkUxs++SLW6VQm8j8=; b=EnaSJcm2pSWoeD2OnBfpzKwY3o
 Hz/0FXUaHoV0aDKDJ2+7vtyPjfgVVKRQnvrGQ2+9GtfcklyX+42M/NHOyP1sCeNyQ2fE6U58z9Jqh
 fl+seA56iR15IKDoKtsya8LkAgM8EeQPe9TcuYWeuS+k+h+Dj1nihUMXdtWf+iL+/uIo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=4Bb3Zb7auvgMvZAuE4484XNN8xPkUxs++SLW6VQm8j8=; b=lqsztaY42UZBAhp97TTq4JzREf
 PDlcre8Io529CLLDGnIkRMIlW/ackontf4Gv44qM7TZdXKa3KFRpzzDviH4cf/sRqFvDle2vbf8Tp
 9G6EloickXjI8/KWOXYtDSPoYf2xgDh/nYmN4TZQvKcPOmBoTmrt7h7RNt2ZrfZOJFYQ=;
Received: from mga05.intel.com ([192.55.52.43])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1oyxLg-00EgIY-FJ for openipmi-developer@lists.sourceforge.net;
 Sat, 26 Nov 2022 15:44:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669477452; x=1701013452;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=TYZva1qhZaDDzx7ssD6565IlpCg24ayIFbcaC7tY8Tc=;
 b=V1SxMmpbUl+nWWZ8R41Pd+bRfL9qCWJUUMinYD0rKmcz3vblKHJ9Sn38
 rFsJVplbr8gt8yW5dMjNxIuLMmO05Y6VmEStILLQO0ISJ4ZS/0uMZ72XB
 T3U32Q0MB4zv0n1w1jrExqhpup401jlrVa39kIz9Fx45jg8EoDjhgNwW4
 Ovqdy3rket2RW0vPqcKgbDSBbZJKseap5W6a5UU+bvLDrSulec6eUl7Ng
 LQnNAjfCe8v5TnzXfFPixZwd3vGCWUdh5RGFjgteu8obCo7tkOIOv6eXi
 nuHHqUxD+X3gQLqf2C45ar2rd71AsEvAT15gKkgzLQ8Uu9pPdLbi/2QxS g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10543"; a="400895103"
X-IronPort-AV: E=Sophos;i="5.96,196,1665471600"; d="scan'208";a="400895103"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Nov 2022 07:44:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10543"; a="620587303"
X-IronPort-AV: E=Sophos;i="5.96,196,1665471600"; d="scan'208";a="620587303"
Received: from smile.fi.intel.com ([10.237.72.54])
 by orsmga006.jf.intel.com with ESMTP; 26 Nov 2022 07:43:54 -0800
Received: from andy by smile.fi.intel.com with local (Exim 4.96)
 (envelope-from <andriy.shevchenko@intel.com>) id 1oyxLL-000Bco-1n;
 Sat, 26 Nov 2022 17:43:51 +0200
Date: Sat, 26 Nov 2022 17:43:51 +0200
From: Andy Shevchenko <andriy.shevchenko@intel.com>
To: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <Y4I0N3KpU/LSJYpd@smile.fi.intel.com>
References: <20221118224540.619276-1-uwe@kleine-koenig.org>
 <20221122185818.3740200d@jic23-huawei>
 <20221122201654.5rdaisqho33buibj@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221122201654.5rdaisqho33buibj@pengutronix.de>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-Spam-Score: -3.2 (---)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Tue, Nov 22, 2022 at 09:16:54PM +0100, Uwe Kleine-König
    wrote: > On Tue, Nov 22, 2022 at 06:58:18PM +0000, Jonathan Cameron wrote:
    > > Queued all of the below: > > with one tweaked as per your suggestion
   and the highlighted one dropped on basis > > I was already carrying the equivalent
    - as you pointed out. > > > > I was already [...] 
 
 Content analysis details:   (-3.2 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
                             medium trust
                             [192.55.52.43 listed in list.dnswl.org]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1oyxLg-00EgIY-FJ
X-Mailman-Approved-At: Sun, 27 Nov 2022 13:16:10 +0000
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
Cc: alsa-devel@alsa-project.org, devicetree@vger.kernel.org,
 linux-iio@vger.kernel.org, linux-fbdev@vger.kernel.org,
 platform-driver-x86@vger.kernel.org, netdev@vger.kernel.org,
 linux-mtd@lists.infradead.org, linux-i2c@vger.kernel.org,
 Lee Jones <lee.jones@linaro.org>, linux-stm32@st-md-mailman.stormreply.com,
 linux-leds@vger.kernel.org, linux-rtc@vger.kernel.org,
 chrome-platform@lists.linux.dev, linux-samsung-soc@vger.kernel.org,
 linux-staging@lists.linux.dev,
 Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
 linux-serial@vger.kernel.org, linux-input@vger.kernel.org,
 Grant Likely <grant.likely@linaro.org>, linux-media@vger.kernel.org,
 linux-pwm@vger.kernel.org, linux-watchdog@vger.kernel.org,
 Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <uwe@kleine-koenig.org>,
 linux-pm@vger.kernel.org, linux-actions@lists.infradead.org,
 Wolfram Sang <wsa@kernel.org>, linux-gpio@vger.kernel.org,
 Angel Iglesias <ang.iglesiasg@gmail.com>, linux-rpi-kernel@lists.infradead.org,
 linux-amlogic@lists.infradead.org, openipmi-developer@lists.sourceforge.net,
 linux-omap@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Purism Kernel Team <kernel@puri.sm>, gregkh@linuxfoundation.org,
 linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-spi@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
 linux-crypto@vger.kernel.org, kernel@pengutronix.de,
 patches@opensource.cirrus.com, linux-integrity@vger.kernel.org,
 linuxppc-dev@lists.ozlabs.org, Jonathan Cameron <jic23@kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Tue, Nov 22, 2022 at 09:16:54PM +0100, Uwe Kleine-K=F6nig wrote:
> On Tue, Nov 22, 2022 at 06:58:18PM +0000, Jonathan Cameron wrote:

> > Queued all of the below:
> > with one tweaked as per your suggestion and the highlighted one dropped=
 on basis
> > I was already carrying the equivalent - as you pointed out.
> > =

> > I was already carrying the required dependency.
> > =

> > Includes the IIO ones in staging.
> > =


> > p.s. I perhaps foolishly did this in a highly manual way so as to
> > also pick up Andy's RB.  So might have dropped one...
> =

> You could have done:
> =

> 	H=3D$(git rev-parse @)
> 	b4 am -P 49-190 20221118224540.619276-1-uwe@kleine-koenig.org
> 	git am ...
> 	git filter-branch -f --msg-filter "grep -v 'Signed-off-by: Jonathan'; ec=
ho 'Reviewed-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>'; echo=
 'Signed-off-by: Jonathan Cameron <jic23@kernel.org>'" $H..
> =

> (untested, but you get the idea).

That's, for example (just last from the history as is), how I usually do it
(tested):

 git filter-branch --msg-filter 'sed -e "/Signed-off-by: Andy Shevchenko/ a=
 Tested-by: Daniel Scally <dan.scally@ideasonboard.com>"' -f HEAD~4..HEAD


-- =

With Best Regards,
Andy Shevchenko




_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
