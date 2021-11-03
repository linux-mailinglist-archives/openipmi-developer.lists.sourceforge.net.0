Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 11417443AA2
	for <lists+openipmi-developer@lfdr.de>; Wed,  3 Nov 2021 01:54:47 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1mi4Y6-0006vn-VP; Wed, 03 Nov 2021 00:54:42 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <jae.hyun.yoo@linux.intel.com>) id 1mi4Y5-0006vh-Sj
 for openipmi-developer@lists.sourceforge.net; Wed, 03 Nov 2021 00:54:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=4SR3TysUKxrVmx/UADaYAAlCsBK/gQyK/jNJywSFJcw=; b=eeSDHPUXaCaG/TZTpEsbfwtWcI
 CdnuK7c0r93ZhhNTPhiXkK+S7hcbDAWPwvJcJHaaMuuzLpxa9Xor1YDJSzRMoVGw7fPntrLOmmPMY
 rE7ovL+fYJsbYuH5H0rjeJjPjIZkDNGx9Zl8oXJmMviDfrTx19gbHkBCEJS7T64TZsJY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=4SR3TysUKxrVmx/UADaYAAlCsBK/gQyK/jNJywSFJcw=; b=W3NBQly5JnZb737nhglpvA+GCD
 ql1b+13SJs2QqVxtW0Vd+jXaScJKhok4qhBDkS3QLMgz7Wqzsly0JlkncmBgHWaQgJ67MLXixCB4J
 DDWgaO3cNH++7pcnHKDPPMpFRgapHLauAtAYsgFTKdCZT59qy0Kqy+8M3CTwSiiHVc/I=;
Received: from mga03.intel.com ([134.134.136.65])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mi4Y2-00Fdze-Ic
 for openipmi-developer@lists.sourceforge.net; Wed, 03 Nov 2021 00:54:41 +0000
X-IronPort-AV: E=McAfee;i="6200,9189,10156"; a="231355463"
X-IronPort-AV: E=Sophos;i="5.87,203,1631602800"; d="scan'208";a="231355463"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2021 17:54:32 -0700
X-IronPort-AV: E=Sophos;i="5.87,203,1631602800"; d="scan'208";a="583914590"
Received: from yoojae-mobl.amr.corp.intel.com (HELO [10.209.55.177])
 ([10.209.55.177])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2021 17:54:31 -0700
Message-ID: <63678f47-8b4a-1385-a755-bc7c2316ca0d@linux.intel.com>
Date: Tue, 2 Nov 2021 17:54:30 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.2.1
Content-Language: en-US
To: Zev Weiss <zev@bewilderbeest.net>
References: <20211101233751.49222-1-jae.hyun.yoo@intel.com>
 <CACPK8XfBi+jY5ftLqsEVXHe01SQBNpTSwo+WtXN3=YUQnXACtw@mail.gmail.com>
 <YYHSHoELvKRI4Zh1@hatter.bewilderbeest.net>
 <d2a18e3b-cb02-37b5-cad8-45c3e8ff3bb4@linux.intel.com>
 <YYHYMKDD7hz15ceR@hatter.bewilderbeest.net>
From: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>
In-Reply-To: <YYHYMKDD7hz15ceR@hatter.bewilderbeest.net>
X-Spam-Score: -4.3 (----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 11/2/2021 5:30 PM, Zev Weiss wrote: > On Tue, Nov 02, 2021
 at 05:17:30PM PDT, Jae Hyun Yoo wrote: >> Hi Zev, >> >> On 11/2/2021 5:04
 PM, Zev Weiss wrote: >>> On Mon, Nov 01, 2021 at 04:36:38PM PDT, [...] 
 Content analysis details:   (-4.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.65 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -2.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1mi4Y2-00Fdze-Ic
Subject: Re: [Openipmi-developer] [PATCH -next 0/4] Add LCLK control into
 Aspeed LPC sub drivers
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
Cc: Linux ARM <linux-arm-kernel@lists.infradead.org>,
 devicetree <devicetree@vger.kernel.org>,
 linux-aspeed <linux-aspeed@lists.ozlabs.org>, Corey Minyard <minyard@acm.org>,
 Andrew Jeffery <andrew@aj.id.au>, Rob Herring <robh+dt@kernel.org>,
 Jae Hyun Yoo <jae.hyun.yoo@intel.com>,
 openipmi-developer@lists.sourceforge.net,
 Haiyue Wang <haiyue.wang@linux.intel.com>, Cedric Le Goater <clg@kaod.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: openipmi-developer-bounces@lists.sourceforge.net



On 11/2/2021 5:30 PM, Zev Weiss wrote:
> On Tue, Nov 02, 2021 at 05:17:30PM PDT, Jae Hyun Yoo wrote:
>> Hi Zev,
>>
>> On 11/2/2021 5:04 PM, Zev Weiss wrote:
>>> On Mon, Nov 01, 2021 at 04:36:38PM PDT, Joel Stanley wrote:
>>>> On Mon, 1 Nov 2021 at 23:18, <jae.hyun.yoo@intel.com> wrote:
>>>>>
>>>>> From: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>
>>>>>
>>>>> Hello all,
>>>>>
>>>>> This series is for appliying below fix to all Aspped LPC sub drivers.
>>>>> https://lore.kernel.org/all/20201208091748.1920-1-wangzhiqiang.bj@bytedance.com/ 
>>>>>
>>>>>
>>>>>
>>>>> An LPC sub driver can be enabled without using the lpc-ctrl driver 
>>>>> or it
>>>>> can be registered ahead of lpc-ctrl depends on each system 
>>>>> configuration and
>>>>> this difference introduces that LPC can be enabled without heart 
>>>>> beating of
>>>>> LCLK so it causes improper handling on host interrupts when the 
>>>>> host sends
>>>>> interrupts in that time frame. Then kernel eventually forcibly 
>>>>> disables the
>>>>> interrupt with dumping stack and printing a 'nobody cared this irq' 
>>>>> message
>>>>> out.
>>>>>
>>>>> To prevent this issue, all LPC sub drivers should enable LCLK 
>>>>> individually
>>>>> so this patch adds clock control logic into the remaining Aspeed 
>>>>> LPC sub
>>>>> drivers.
>>>>
>>>> Thanks for sending this out!
>>>>
>>>> This will resolve a few of the issues we have in the issue tracker:
>>>>
>>>> https://github.com/openbmc/linux/issues/210
>>>> https://github.com/openbmc/linux/issues/130
>>>>
>>>> The patches look good to me. I think you've just missed Corey's PR for
>>>> v5.16, but I will stick them in the openbmc tree once they've had a
>>>> review.
>>>>
>>>
>>> Hi Jae,
>>>
>>> I tried this series out on the same in-progress OpenBMC port from 
>>> issue number 210 linked above and am still seeing problems (dmesg 
>>> pasted below).
>>>
>>> I cherry-picked commit f9241fe8b9652 ("ARM: dts: aspeed: Add uart 
>>> routing to device tree") from linux-next to allow the first patch to 
>>> apply cleanly; is there anything else I might be missing that'd be 
>>> needed to test the series properly?
>>
>> Looks like below dmesg shows an error from 'aspeed_lpc_snoop_probe'
>> which this series doesn't touch. Do you have below fix in your code
>> tree?
>>
>> https://lore.kernel.org/all/20201208091748.1920-1-wangzhiqiang.bj@bytedance.com/ 
>>
>>
>> Thanks,
>> Jae
>>
> 
> Yes, I've got that patch (commit 3f94cf1558), and the accompanying dts 
> update to add the clocks property to the lpc-snoop device (commit 
> d050d049f8).
> 
> However, while there is an aspeed_lpc_snoop_probe() backtrace there, 
> note that there's *also* one from aspeed_kcs_probe() further on 
> (starting at timestamp 3.263306).
> 
> 
> Zev
> 

Can you please test additional changes below?

Thanks,
Jae

diff --git a/drivers/char/ipmi/kcs_bmc_aspeed.c 
b/drivers/char/ipmi/kcs_bmc_aspeed.c
index 00706472cc4d..af03aea0f3ce 100644
--- a/drivers/char/ipmi/kcs_bmc_aspeed.c
+++ b/drivers/char/ipmi/kcs_bmc_aspeed.c
@@ -644,6 +644,17 @@ static int aspeed_kcs_probe(struct platform_device 
*pdev)
         if (rc)
                 goto err;

+       platform_set_drvdata(pdev, priv);
+
+       aspeed_kcs_irq_mask_update(kcs_bmc, (KCS_BMC_EVENT_TYPE_IBF | 
KCS_BMC_EVENT_TYPE_OBE), 0);
+       aspeed_kcs_enable_channel(kcs_bmc, true);
+
+       rc = kcs_bmc_add_device(&priv->kcs_bmc);
+       if (rc) {
+               dev_warn(&pdev->dev, "Failed to register channel %d: 
%d\n", kcs_bmc->channel, rc);
+               goto err;
+       }
+
         /* Host to BMC IRQ */
         rc = aspeed_kcs_config_downstream_irq(kcs_bmc, pdev);
         if (rc)
@@ -658,17 +669,6 @@ static int aspeed_kcs_probe(struct platform_device 
*pdev)
                 priv->upstream_irq.mode = aspeed_kcs_irq_none;
         }

-       platform_set_drvdata(pdev, priv);
-
-       aspeed_kcs_irq_mask_update(kcs_bmc, (KCS_BMC_EVENT_TYPE_IBF | 
KCS_BMC_EVENT_TYPE_OBE), 0);
-       aspeed_kcs_enable_channel(kcs_bmc, true);
-
-       rc = kcs_bmc_add_device(&priv->kcs_bmc);
-       if (rc) {
-               dev_warn(&pdev->dev, "Failed to register channel %d: 
%d\n", kcs_bmc->channel, rc);
-               goto err;
-       }
-
         dev_info(&pdev->dev, "Initialised channel %d at 0x%x\n",
                         kcs_bmc->channel, addrs[0]);

diff --git a/drivers/soc/aspeed/aspeed-lpc-snoop.c 
b/drivers/soc/aspeed/aspeed-lpc-snoop.c
index eceeaf8dfbeb..044c8f6665b7 100644
--- a/drivers/soc/aspeed/aspeed-lpc-snoop.c
+++ b/drivers/soc/aspeed/aspeed-lpc-snoop.c
@@ -306,10 +306,6 @@ static int aspeed_lpc_snoop_probe(struct 
platform_device *pdev)
                 return rc;
         }

-       rc = aspeed_lpc_snoop_config_irq(lpc_snoop, pdev);
-       if (rc)
-               goto err;
-
         rc = aspeed_lpc_enable_snoop(lpc_snoop, dev, 0, port);
         if (rc)
                 goto err;
@@ -324,6 +320,10 @@ static int aspeed_lpc_snoop_probe(struct 
platform_device *pdev)
                 }
         }

+       rc = aspeed_lpc_snoop_config_irq(lpc_snoop, pdev);
+       if (rc)
+               goto err;
+
         return 0;

  err:


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
