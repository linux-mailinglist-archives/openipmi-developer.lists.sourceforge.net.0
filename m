Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id VWhbOA9+VGppmgMAu9opvQ
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	for <lists+openipmi-developer@lfdr.de>; Mon, 13 Jul 2026 07:56:31 +0200
X-Original-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E01E747603
	for <lists+openipmi-developer@lfdr.de>; Mon, 13 Jul 2026 07:56:31 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=lists.sourceforge.net header.s=beta header.b=gbwfACPq;
	dkim=fail ("body hash did not verify") header.d=sourceforge.net header.s=x header.b=RBKlKjXc;
	dkim=fail ("body hash did not verify") header.d=sf.net header.s=x header.b=BwiyUVrf;
	dkim=fail ("body hash did not verify") header.d=kernel.org header.s=k20260515 header.b=dXV90xl+;
	dmarc=pass (policy=none) header.from=lists.sourceforge.net;
	spf=pass (mail.lfdr.de: domain of openipmi-developer-bounces@lists.sourceforge.net designates 216.105.38.7 as permitted sender) smtp.mailfrom=openipmi-developer-bounces@lists.sourceforge.net
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:References:To:MIME-Version:Date:
	Message-ID:Sender:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=VQs0UW9ts6ScE+SBa76I6hg5504eGGqmg9sxtmFRcCM=; b=gbwfACPqRiS90a9CVHaqksZaYh
	Wbbuy0fSmz96WpldCo0hF51ZLpAfdn8SUaWkLjhymso8eAKl8mNJKsFvANIUhbtzl3+tvxB8cKCaI
	JaCOIWZo8I//oRywI/DXXAaYWeSJiEyVIthaw0ZwDs/h+dcvLjy/iDPrJj9osGJbQgkw=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1wj9eX-00033y-N6;
	Mon, 13 Jul 2026 05:56:27 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <krzk@kernel.org>) id 1wj9eV-00033q-Sh
 for openipmi-developer@lists.sourceforge.net;
 Mon, 13 Jul 2026 05:56:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=PtrCDJHGMBLrAiE0X+RqgpgZ1PM0JBugYWIm44VvHeg=; b=RBKlKjXc6/AAR8cjQqwDBF0E4b
 cG3tLMJjED5+L2mjJqZpsSsZouernG20iXV0xYnoMEnF3Z1n0J7hWPiHeBlN/6Xpa8KllNmyUZNth
 0xwkBnig8fclnvQpkS1XOY5LT0GE0rRX7QlsNAMRhZ5A8HP315zhD7MOnhwVHze+Q54Q=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=PtrCDJHGMBLrAiE0X+RqgpgZ1PM0JBugYWIm44VvHeg=; b=BwiyUVrfGFw/gPA65XOu/bhizB
 2c5CvK+d4aHLRhKz49EHSDss0yVapCL0NlZiZ+L6x3w2Qze8Jg6KBdYVS4c+GK0qxfPazz47uPdjK
 CLVoCKCR3k9OQkXzx4+qhI0kZ4oRv32FmAoRuNZCsxlNWo+1y4vrhVytGTX0+g9PFeK4=;
Received: from tor.source.kernel.org ([172.105.4.254])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1wj9eS-00010a-Sr for openipmi-developer@lists.sourceforge.net;
 Mon, 13 Jul 2026 05:56:25 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
 by tor.source.kernel.org (Postfix) with ESMTP id 3502860018;
 Mon, 13 Jul 2026 05:56:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3E41F1F000E9;
 Mon, 13 Jul 2026 05:56:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
 s=k20260515; t=1783922173;
 bh=PtrCDJHGMBLrAiE0X+RqgpgZ1PM0JBugYWIm44VvHeg=;
 h=Date:Subject:To:Cc:References:From:In-Reply-To;
 b=dXV90xl+gj+TloizpMWOy2PLVfKxDOTs3Mz57RiuvirEqtc08yxbFlEO1DRo/WB4N
 3Fwk8LPppJB7R7mMreSgYg+W76g2jgHZ+NWXfsVSij+SC6N8WczYkBlW4fGXMENBuT
 sxKF8xsJT9hWcSlU8V01bfytLpWk8J7zH98Cbd7JfUiaIYmVs8pH0l7kIHoCqY6YIk
 8rH8R3KS/XAGPv1ALWuR117kg+e7ktt7Ah12X33XO0cIe+uslkzmqxbMxiWIVr9W9J
 EROB0zmVBIe3IG4DtLAoX/L9ikk5oSHELLrIy9HddhfodDuXZEPqP/Fz8hwhkvFvfX
 UJq7x6k1LboUQ==
Message-ID: <31df2c13-9c31-4a78-975f-b0152ad3356d@kernel.org>
Date: Mon, 13 Jul 2026 07:56:06 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: YC Hsieh <yc_hsieh@aspeedtech.com>, Corey Minyard <corey@minyard.net>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>,
 Andrew Jeffery <andrew@codeconstruct.com.au>
References: <20260629-aspeed-bt-bmc-multichannel-v1-0-fc23ee337f7a@aspeedtech.com>
 <20260629-aspeed-bt-bmc-multichannel-v1-3-fc23ee337f7a@aspeedtech.com>
 <35a8e3b3-7725-4d1b-8667-84e6fa24b2ca@kernel.org>
 <TY0PR06MB6855F4F499246CD5C44DB23893FA2@TY0PR06MB6855.apcprd06.prod.outlook.com>
Content-Language: en-US
Autocrypt: addr=krzk@kernel.org; keydata=
 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
In-Reply-To: <TY0PR06MB6855F4F499246CD5C44DB23893FA2@TY0PR06MB6855.apcprd06.prod.outlook.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 13/07/2026 07:34, YC Hsieh wrote: > On Tue, Jun 30, 2026
 at 08:11:34AM +0200, Krzysztof Kozlowski wrote: > >> What >> >> is >> >>
 with >> >> this >> >> line breaks? > > Apologies for the broken for [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1wj9eS-00010a-Sr
Subject: Re: [Openipmi-developer] 
 =?utf-8?b?5Zue6KaGOiBbUEFUQ0ggMy80XSBkdC1i?=
 =?utf-8?q?indings=3A_ipmi=3A_Add_optional_LPC_properties_to_ASPEED_BT_dev?=
 =?utf-8?q?ices?=
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
From: Krzysztof Kozlowski via Openipmi-developer
 <openipmi-developer@lists.sourceforge.net>
Reply-To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "openipmi-developer@lists.sourceforge.net"
 <openipmi-developer@lists.sourceforge.net>,
 "linux-aspeed@lists.ozlabs.org" <linux-aspeed@lists.ozlabs.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-7.11 / 15.00];
	WHITELIST_DMARC(-7.00)[sourceforge.net:D:+];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[216.105.38.7:from];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_MIXED(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[openipmi-developer@lists.sourceforge.net,openipmi-developer-bounces@lists.sourceforge.net];
	DMARC_POLICY_ALLOW(0.00)[lists.sourceforge.net,none];
	RCPT_COUNT_TWELVE(0.00)[12];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:yc_hsieh@aspeedtech.com,m:corey@minyard.net,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:joel@jms.id.au,m:andrew@codeconstruct.com.au,m:devicetree@vger.kernel.org,m:openipmi-developer@lists.sourceforge.net,m:linux-aspeed@lists.ozlabs.org,m:linux-kernel@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORWARDED(0.00)[openipmi-developer@lists.sourceforge.net];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,kernel.org:s=k20260515];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[openipmi-developer@lists.sourceforge.net,openipmi-developer-bounces@lists.sourceforge.net];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,kernel.org:-];
	TAGGED_RCPT(0.00)[openipmi-developer,dt];
	HAS_REPLYTO(0.00)[krzk@kernel.org];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.sourceforge.net:from_smtp,lists.sourceforge.net:dkim,lists.sourceforge.net:helo,lists.sourceforge.net:rdns,lists.sourceforge.net:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 1E01E747603

On 13/07/2026 07:34, YC Hsieh wrote:
> On Tue, Jun 30, 2026 at 08:11:34AM +0200, Krzysztof Kozlowski wrote:
> 
>> What
>>
>> is
>>
>> with
>>
>> this
>>
>> line breaks?
> 
> Apologies for the broken formatting in the commit message.
> I will fix it in the next revision.
> 
>> No, you do not get second reg property.
>>
>> No, you do not get second interrupts property.
> 
> Understood.
> 
> These values are not addressable resources of the BMC node itself;
> rather, they describe how the BMC's LPC engine is exposed on the host
> LPC bus. I am not sure how they should be represented in DT, since
> they do not seem to fit the usual semantics of either "reg" or "interrupts".
> 
> Do you have a preferred way to represent this kind of host-facing LPC
> configuration in the binding?

I don't understand what you are referring to, entire context is gone
because essentially you top-posted.

Best regards,
Krzysztof


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
