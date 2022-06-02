Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 646B753B071
	for <lists+openipmi-developer@lfdr.de>; Thu,  2 Jun 2022 02:33:02 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1nwYll-0007T6-DY; Thu, 02 Jun 2022 00:32:56 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <tcminyard@gmail.com>) id 1nwYlj-0007T0-GL
 for openipmi-developer@lists.sourceforge.net; Thu, 02 Jun 2022 00:32:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=sh16xGe/echtR67o8EYAV8ZtQjoNwgsJwYaCJqxIORY=; b=cZiXrhzbd4Ii7c2jvQOOn0c7/t
 ezljU3s78zeXRFYReHFiRV1WI6SOkGqLjWDZiXMMepPTqtrdnIQwbSRzNj5ICr8oFEiSI8SC9MhLJ
 LLOrhmk+RWc95mZMHE+nguei7kVA+PaGWNV2lMnw6TkV7S9Y0CN8XRXjuJgQLpZSkRfI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=sh16xGe/echtR67o8EYAV8ZtQjoNwgsJwYaCJqxIORY=; b=ltN+1SkwHDqeVr/Wdd2Bcj+nni
 Pnlm3hrjHJPCxs8B2bwG7OM7I5m9AiIGYA95bzgTe0ded+Bp1dgHuAUw0AFfpdxzXBGGSHyKOGqUd
 Lzbv9vvRm9t01+KuBckzmq0liP0Ws1mRW9we3CTKnTVqil0hZH4Bzjn1n7uNmlOI3KQY=;
Received: from mail-oi1-f176.google.com ([209.85.167.176])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1nwYlg-001aSt-EL
 for openipmi-developer@lists.sourceforge.net; Thu, 02 Jun 2022 00:32:54 +0000
Received: by mail-oi1-f176.google.com with SMTP id v9so4762605oie.5
 for <openipmi-developer@lists.sourceforge.net>;
 Wed, 01 Jun 2022 17:32:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=sender:date:from:to:cc:subject:message-id:reply-to:references
 :mime-version:content-disposition:in-reply-to;
 bh=sh16xGe/echtR67o8EYAV8ZtQjoNwgsJwYaCJqxIORY=;
 b=QPOHKu2JZdnGBtC7fmTtjOSE9oopRqCnfZOiDgt6Xq8NaeFj5LEpiNC4MBvSny6XAZ
 tP23yYoSibaO17BC+tN/4ndFzeu3y9sAlpFxVrvR46zGNkrmktR82tsnRYao912mVlgu
 sFnMmIo/6tg4Mf1sU3/boIWlqZvWGKl6F7TtFJWoKmbeKgyEm9YDB5EQd+wNDBuGyvTX
 E9bkmD/dKERVdm2JsF9okxmr6y9B2DO2czXcmSta8JmSRNupjJh1aMt94eWuHQdZiOYP
 kpQk2+ruD30huk1PRYNfV17WxAzjzkzOE8Zn/WugahtBCADPO8Sj5PlPfroNmHZkNiyY
 469Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:references:mime-version:content-disposition:in-reply-to;
 bh=sh16xGe/echtR67o8EYAV8ZtQjoNwgsJwYaCJqxIORY=;
 b=GOV99g1dO1XS1YNlTawtmdGIUuuj9vdfAtMJ9DsYZeBij6z8TtzN++s8YMz1h7h2oR
 017bum0RZjGmBeWjZTPcLxwmZJXbGfW5uuVnIW/sgBJWCl0Fp/3e3efworFS8d05Xh3I
 ebHeYRAfYevWoMfgbW/HezrhL4DtN1RUwr+nsMbrRoac05F+LjBCCXgysjYZ4JBF02m1
 xEtba1agDXCN+aq/VMTYZrL0qmmf5WPrbllrc+BRe4GRdAPCl8n2eRCO95OhYpEeKKFm
 RYtfrQ+TwPFn4Mki6KUJmrNcfn5MqbQImsu1PqVJLdS0rB2rQb4ZU/E8yecb9MhWZgFg
 kYPg==
X-Gm-Message-State: AOAM531yRJG1lWZwpWAq5y7OkzMqisyvrWmmZfZsvKKSSREysvBd9Y7C
 DNcr0dzcLyNZ9kEatHQyfA==
X-Google-Smtp-Source: ABdhPJzvSVAppomg02HmNv/mcRsuQs1poeKeWSDg8cjkuwsPJmAtobRPluwWod2pXyfwLfpU1Gm0fQ==
X-Received: by 2002:a05:6808:2196:b0:32b:492a:3b4d with SMTP id
 be22-20020a056808219600b0032b492a3b4dmr1200787oib.255.1654129966739; 
 Wed, 01 Jun 2022 17:32:46 -0700 (PDT)
Received: from serve.minyard.net (serve.minyard.net. [2001:470:b8f6:1b::1])
 by smtp.gmail.com with ESMTPSA id
 12-20020aca120c000000b00325cda1ffa5sm1542462ois.36.2022.06.01.17.32.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 01 Jun 2022 17:32:46 -0700 (PDT)
Received: from minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:cca5:4cab:9a61:6930])
 by serve.minyard.net (Postfix) with ESMTPSA id 423751800BB;
 Thu,  2 Jun 2022 00:32:45 +0000 (UTC)
Date: Wed, 1 Jun 2022 19:32:44 -0500
From: Corey Minyard <minyard@acm.org>
To: Quan Nguyen <quan@os.amperecomputing.com>
Message-ID: <20220602003244.GK3767252@minyard.net>
References: <20220422040803.2524940-1-quan@os.amperecomputing.com>
 <20220422040803.2524940-2-quan@os.amperecomputing.com>
 <20220423015119.GE426325@minyard.net>
 <ec7b86ec-827f-da64-8fd2-eae09f802694@os.amperecomputing.com>
 <20220504120631.GE3767252@minyard.net>
 <ba084735-0781-7ca2-4d04-a70a4115729a@os.amperecomputing.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ba084735-0781-7ca2-4d04-a70a4115729a@os.amperecomputing.com>
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, Jun 01, 2022 at 03:23:11PM +0700, Quan Nguyen wrote:
 > On 04/05/2022 19:06, Corey Minyard wrote: > > On Wed, May 04,
 2022 at 01:45:03PM
 +0700, Quan Nguyen via Openipmi-developer wrote: > > > > [...] 
 Content analysis details:   (0.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tcminyard[at]gmail.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.176 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.176 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1nwYlg-001aSt-EL
Subject: Re: [Openipmi-developer] [PATCH v7 1/3] ipmi: ssif_bmc: Add SSIF
 BMC driver
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
Reply-To: minyard@acm.org
Cc: devicetree@vger.kernel.org, linux-aspeed@lists.ozlabs.org,
 Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
 Andrew Jeffery <andrew@aj.id.au>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>, openbmc@lists.ozlabs.org,
 "Thang Q . Nguyen" <thang@os.amperecomputing.com>,
 Brendan Higgins <brendanhiggins@google.com>, linux-kernel@vger.kernel.org,
 Phong Vo <phong@os.amperecomputing.com>, Wolfram Sang <wsa@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, linux-i2c@vger.kernel.org,
 openipmi-developer@lists.sourceforge.net,
 Open Source Submission <patches@amperecomputing.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Wed, Jun 01, 2022 at 03:23:11PM +0700, Quan Nguyen wrote:
> On 04/05/2022 19:06, Corey Minyard wrote:
> > On Wed, May 04, 2022 at 01:45:03PM +0700, Quan Nguyen via Openipmi-developer wrote:
> > > > 
> > > > I seem to remember mentioning this before, but there is no reason to
> > > > pack the structures below.
> > > > 
> > > 
> > > The packed structure is because we want to pick the len directly from user
> > > space without worry about the padding byte.
> > > 
> > > As we plan not to use the .h file in next version, I still would like to use
> > > packed structure internally inside ssif_bmc.c file.
> > 
> > Packed doesn't matter for the userspace API.  If you look at other
> > structures in the userspace API, they are not packed, either.  The
> > compiler will do the right thing on both ends.
> > 
> > > 
> > > > And second, the following is a userspace API structures, so it needs to
> > > > be in its own file in include/uapi/linux, along with any supporting
> > > > things that users will need to use.  And your userspace code should be
> > > > using that file.
> > > > 
> > > 
> > > Meantime, I'd like not to use .h as I see there is no demand for sharing the
> > > data structure between kernel and user space yet. But we may do it in the
> > > future.
> > 
> > If you have a userspace API, it needs to be in include/uapi/linux.
> > You may not be the only user of this code.  In fact, you probably won't
> > be.  You need to have a .h with the structures in it, you don't want the
> > same structure in two places if you can help it.
> > 
> 
> Dear Corey,
> 
> Is it OK to push the structure definition into the
> include/uapi/linux/ipmi_bmc.h ?
> 
> Or should it need to be in separate new header file in uapi/linux ?

I think a different file, like ipmi_ssif_bmc, to match the file and
operation.  Unless you need the things in ipmi_bmc.h, which I don't
think is the case.

-corey

> 
> Thank you,
> - Quan
> 
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
