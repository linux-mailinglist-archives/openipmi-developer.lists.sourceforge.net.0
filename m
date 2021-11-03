Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B00E3443A72
	for <lists+openipmi-developer@lfdr.de>; Wed,  3 Nov 2021 01:35:34 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1mi4FW-0002d8-UI; Wed, 03 Nov 2021 00:35:30 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <zev@bewilderbeest.net>) id 1mi4Az-0006Rn-Is
 for openipmi-developer@lists.sourceforge.net; Wed, 03 Nov 2021 00:30:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=kutB5SU1qk86Qex7r3FP2m75aK+dhC3RMcn7DHixw+E=; b=JGu8LeP8D0MqJii016xzwvaAg7
 SvEnZkbJGO9GtXykzYrGQMJRqTRyQdWEoXsiRTEsscY7DjoVVNNvyUkDNTjW6QaYygcCv11ISpaA6
 c19Vu4mqAqw3XJ2rD0sCNxXh6c6ffT/Y2OLY5mXg9zex/s0VA29shJ+NdisjL512viXw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=kutB5SU1qk86Qex7r3FP2m75aK+dhC3RMcn7DHixw+E=; b=hMWp9olOC8Xs0YVz4SzTyzVQd1
 IILexVIGO6wN6/8QKlGqmrxVfNmmPoFDHtr+lSbaui5PN9WhrX+TBPA9Grp5Ptz8tmK8XdCdOdj7n
 XcoxiTsAGNYZny0GrMyNqTTw0V6lOswQPRsLPQn6iBtCvkMLw8OXkW4h9aVbap/9H88c=;
Received: from thorn.bewilderbeest.net ([71.19.156.171])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mi4Ax-0002VE-NC
 for openipmi-developer@lists.sourceforge.net; Wed, 03 Nov 2021 00:30:49 +0000
Received: from hatter.bewilderbeest.net (97-113-240-219.tukw.qwest.net
 [97.113.240.219])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: zev)
 by thorn.bewilderbeest.net (Postfix) with ESMTPSA id 20532285;
 Tue,  2 Nov 2021 17:30:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bewilderbeest.net;
 s=thorn; t=1635899442;
 bh=kutB5SU1qk86Qex7r3FP2m75aK+dhC3RMcn7DHixw+E=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Zkhlc/FaWAkQyLIJg853zWURFEacyHX+bXvwg92ZOMofVt1ZhJv14RF/o90RnUUxz
 C4nbnmGxNItoxDCuGl+3bLA7t2YokPFsFLmt32eLpsC5sntJcwkw3qZKPE6LPNp7vV
 ekW2ZPuXG2iPXYd4cMNY4//hAiaxo8S1HXI8fXcE=
Date: Tue, 2 Nov 2021 17:30:40 -0700
From: Zev Weiss <zev@bewilderbeest.net>
To: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>
Message-ID: <YYHYMKDD7hz15ceR@hatter.bewilderbeest.net>
References: <20211101233751.49222-1-jae.hyun.yoo@intel.com>
 <CACPK8XfBi+jY5ftLqsEVXHe01SQBNpTSwo+WtXN3=YUQnXACtw@mail.gmail.com>
 <YYHSHoELvKRI4Zh1@hatter.bewilderbeest.net>
 <d2a18e3b-cb02-37b5-cad8-45c3e8ff3bb4@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d2a18e3b-cb02-37b5-cad8-45c3e8ff3bb4@linux.intel.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, Nov 02, 2021 at 05:17:30PM PDT, Jae Hyun Yoo wrote:
 >Hi Zev, > >On 11/2/2021 5:04 PM, Zev Weiss wrote: >>On Mon, Nov 01, 2021
 at 04:36:38PM PDT, Joel Stanley wrote: >>>On Mon, 1 Nov 2021 at 23 [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: bewilderbeest.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1mi4Ax-0002VE-NC
X-Mailman-Approved-At: Wed, 03 Nov 2021 00:35:29 +0000
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

On Tue, Nov 02, 2021 at 05:17:30PM PDT, Jae Hyun Yoo wrote:
>Hi Zev,
>
>On 11/2/2021 5:04 PM, Zev Weiss wrote:
>>On Mon, Nov 01, 2021 at 04:36:38PM PDT, Joel Stanley wrote:
>>>On Mon, 1 Nov 2021 at 23:18, <jae.hyun.yoo@intel.com> wrote:
>>>>
>>>>From: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>
>>>>
>>>>Hello all,
>>>>
>>>>This series is for appliying below fix to all Aspped LPC sub drivers.
>>>>https://lore.kernel.org/all/20201208091748.1920-1-wangzhiqiang.bj@bytedance.com/
>>>>
>>>>
>>>>An LPC sub driver can be enabled without using the lpc-ctrl driver or it
>>>>can be registered ahead of lpc-ctrl depends on each system 
>>>>configuration and
>>>>this difference introduces that LPC can be enabled without heart 
>>>>beating of
>>>>LCLK so it causes improper handling on host interrupts when the 
>>>>host sends
>>>>interrupts in that time frame. Then kernel eventually forcibly 
>>>>disables the
>>>>interrupt with dumping stack and printing a 'nobody cared this 
>>>>irq' message
>>>>out.
>>>>
>>>>To prevent this issue, all LPC sub drivers should enable LCLK 
>>>>individually
>>>>so this patch adds clock control logic into the remaining Aspeed LPC sub
>>>>drivers.
>>>
>>>Thanks for sending this out!
>>>
>>>This will resolve a few of the issues we have in the issue tracker:
>>>
>>>https://github.com/openbmc/linux/issues/210
>>>https://github.com/openbmc/linux/issues/130
>>>
>>>The patches look good to me. I think you've just missed Corey's PR for
>>>v5.16, but I will stick them in the openbmc tree once they've had a
>>>review.
>>>
>>
>>Hi Jae,
>>
>>I tried this series out on the same in-progress OpenBMC port from 
>>issue number 210 linked above and am still seeing problems (dmesg 
>>pasted below).
>>
>>I cherry-picked commit f9241fe8b9652 ("ARM: dts: aspeed: Add uart 
>>routing to device tree") from linux-next to allow the first patch to 
>>apply cleanly; is there anything else I might be missing that'd be 
>>needed to test the series properly?
>
>Looks like below dmesg shows an error from 'aspeed_lpc_snoop_probe'
>which this series doesn't touch. Do you have below fix in your code
>tree?
>
>https://lore.kernel.org/all/20201208091748.1920-1-wangzhiqiang.bj@bytedance.com/
>
>Thanks,
>Jae
>

Yes, I've got that patch (commit 3f94cf1558), and the accompanying dts 
update to add the clocks property to the lpc-snoop device (commit 
d050d049f8).

However, while there is an aspeed_lpc_snoop_probe() backtrace there, 
note that there's *also* one from aspeed_kcs_probe() further on 
(starting at timestamp 3.263306).


Zev



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
