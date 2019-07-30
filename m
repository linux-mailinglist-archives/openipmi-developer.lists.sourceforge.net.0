Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id EFBC186578
	for <lists+openipmi-developer@lfdr.de>; Thu,  8 Aug 2019 17:17:20 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1hvkAJ-0002CD-N7; Thu, 08 Aug 2019 15:17:19 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <robh+dt@kernel.org>) id 1hsGOU-0003GN-2i
 for openipmi-developer@lists.sourceforge.net; Tue, 30 Jul 2019 00:53:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=OcDOmt0Ujzsg+v/puoWSqWAVyi0ue9NVoW1sfR7xjes=; b=jA7Cfttm8Z5neG5tnv95yQoPLV
 8m7muVisUKaAr0ES4+sO5YU/M41ewDAamoE5Xi5FfDmx5fSairsvVgPFpJL8jJrBz3IeFjtnDkcbo
 aEbSSfemYA2Dx/kVJLoLCFwfMb7bd3Po8dTYrwvTV8UINvj/5uhmJ3urD9zNjz8WaQPw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=OcDOmt0Ujzsg+v/puoWSqWAVyi0ue9NVoW1sfR7xjes=; b=X6V6nVVn1ZR9+NJja2hCGlmQo4
 YTkzNuvhUJfY5uBSHJ0vE9tI0Y9TerFFr1+RMXECEqFS1LfRqgEmchrLsec4k66ci5xTTa7FoDwf2
 78pH880dJH8zIJdHMS91I6ygONKODsBlNShK3HwSrBpU8rOqW6NmI3S7jO9iiKvZ1M8Q=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1hsGOQ-004GhA-3g
 for openipmi-developer@lists.sourceforge.net; Tue, 30 Jul 2019 00:53:34 +0000
Received: from mail-qk1-f182.google.com (mail-qk1-f182.google.com
 [209.85.222.182])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 700CD217F4
 for <openipmi-developer@lists.sourceforge.net>;
 Tue, 30 Jul 2019 00:53:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564448004;
 bh=9P9XTSwZEraMWe+Bk5cn6zbx8jLkRWytZvexBkWykzI=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=GZn0k3A0oUKjhpHUtqLiXRw3SRuEkDcz1+PO0erXAQO/scDbcDmhX0T170FwAUyY5
 bs43EZSP1C4VOHZp6Ee6MsowaTqa2igTtD6/Gei3ZsJYZLXYW3K0cCfWMeBz+hU1eR
 bJ+/HRQ17C6p7aybDnfpD4HYvSHP4Ueg6SnmGMU4=
Received: by mail-qk1-f182.google.com with SMTP id d79so45356344qke.11
 for <openipmi-developer@lists.sourceforge.net>;
 Mon, 29 Jul 2019 17:53:24 -0700 (PDT)
X-Gm-Message-State: APjAAAUjo+ZSUyEDnN8qwm9M3cL3K8MYkwaaPjOTjIRjmsaV/Lr/CCBz
 sdy0Z5pb0zgspxMXUCn7Me2o6O/c1MhwDhUdrg==
X-Google-Smtp-Source: APXvYqzg4CpA6qd+PAURQBwuutVBrAhYvydEn0PwGDcygNvMl/0/kHQLTQyV/snoQAZCqvPMbDRKwGTKrK5sagEuO9s=
X-Received: by 2002:a37:6944:: with SMTP id e65mr68832709qkc.119.1564448003532; 
 Mon, 29 Jul 2019 17:53:23 -0700 (PDT)
MIME-Version: 1.0
References: <20190726053959.2003-1-andrew@aj.id.au>
In-Reply-To: <20190726053959.2003-1-andrew@aj.id.au>
From: Rob Herring <robh+dt@kernel.org>
Date: Mon, 29 Jul 2019 18:53:11 -0600
X-Gmail-Original-Message-ID: <CAL_JsqJ+sFDG8eKbV3gvmqVHx+otWbki4dY213apzXgfhbXXEw@mail.gmail.com>
Message-ID: <CAL_JsqJ+sFDG8eKbV3gvmqVHx+otWbki4dY213apzXgfhbXXEw@mail.gmail.com>
To: Andrew Jeffery <andrew@aj.id.au>
X-Spam-Score: -0.4 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: aj.id.au]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
 -0.3 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1hsGOQ-004GhA-3g
X-Mailman-Approved-At: Thu, 08 Aug 2019 15:17:18 +0000
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
 devicetree@vger.kernel.org, Xo Wang <xow@google.com>,
 Arnd Bergmann <arnd@arndb.de>, Ken Chen <chen.kenyy@inventec.com>,
 anoo@us.ibm.com, "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 yang.brianc.w@inventec.com, openipmi-developer@lists.sourceforge.net,
 a.filippov@yadro.com,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, taoren@fb.com,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 yao.yuan@linaro.org, Patrick Venture <venture@google.com>, wangzqbj@inspur.com,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Stefan M Schaeckeler <sschaeck@cisco.com>,
 Haiyue Wang <haiyue.wang@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Thu, Jul 25, 2019 at 11:40 PM Andrew Jeffery <andrew@aj.id.au> wrote:
>
> Hello,
>
> The aim of this series is to minimise/eliminate all the warnings from the
> ASPEED devicetrees. It mostly achieves its goal, as outlined below.
>
> Using `aspeed_g5_defconfig` we started with the follow warning count:
>
>     $ make dtbs 2>&1 >/dev/null | wc -l
>     218
>
> and after the full series is applied we have:
>
>     $ make dtbs 2>&1 >/dev/null | wc -l
>     2
>
> for a 100x reduction.
>
> Getting there though isn't without some potential controversy, which I've saved
> for the last half of the series. The following patches I think are in pretty
> good shape:
>
>   ARM: dts: aspeed-g5: Move EDAC node to APB
>   ARM: dts: aspeed-g5: Use recommended generic node name for SDMC
>   ARM: dts: aspeed-g5: Fix aspeed,external-nodes description
>   ARM: dts: vesnin: Add unit address for memory node
>   ARM: dts: fp5280g2: Cleanup gpio-keys-polled properties
>   ARM: dts: swift: Cleanup gpio-keys-polled properties
>   ARM: dts: witherspoon: Cleanup gpio-keys-polled properties
>   ARM: dts: aspeed: Cleanup lpc-ctrl and snoop regs
>   ARM: dts: ibm-power9-dual: Add a unit address for OCC nodes
>
> With these patches applied we get to:
>
>     $ make dtbs 2>&1 >/dev/null | wc -l
>     144
>
> So they make a dent, but fail to clean up the bulk of the issues. From here
> I've mixed in some binding and driver changes with subsequent updates to the
> devicetrees:
>
>   dt-bindings: pinctrl: aspeed: Add reg property as a hint
>   dt-bindings: misc: Document reg for aspeed,p2a-ctrl nodes
>   ARM: dts: aspeed: Add reg hints to syscon children
>   dt-bindings: ipmi: aspeed: Introduce a v2 binding for KCS
>   ipmi: kcs: Finish configuring ASPEED KCS device before enable
>   ipmi: kcs: aspeed: Implement v2 bindings
>   ARM: dts: aspeed-g5: Change KCS nodes to v2 binding
>   ARM: dts: aspeed-g5: Sort LPC child nodes by unit address
>
> By `dt-bindings: ipmi: aspeed: Introduce a v2 binding for KCS` the warnings are
> reduced to:
>
>     $ make dtbs 2>&1 >/dev/null | wc -l
>     125
>
> The bang-for-buck is in fixing up the KCS bindings which removes all-but-two of
> the remaining warnings (which we can't feasibly remove), but doing so forces
> code changes (which I'd avoided up until this point).
>
> Reflecting broadly on the fixes, I think I've made a mistake way back by using
> syscon/simple-mfds to expose the innards of the SCU and LPC controllers in the
> devicetree. This series cleans up what's currently there, but I have half a
> mind to rev the SCU and LPC bindings to not use simple-mfd and instead have a
> driver implementation that uses `platform_device_register_full()` or similar to
> deal with the mess.
>
> Rob - I'm looking for your thoughts here and on the series, I've never felt
> entirely comfortable with what I cooked up. Your advice would be appreciated.

The series generally looks fine to me from a quick scan. As far as
dropping 'simple-mfd', having less fine grained description in DT is
generally my preference. It comes down to whether what you have
defined is maintainable. As most of it is just additions, I think what
you have is fine. Maybe keep all this in mind for the next chip
depending how the SCU and LPC change.

Rob


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
