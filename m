Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id UcMvFT0CRGrnnAoAu9opvQ
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	for <lists+openipmi-developer@lfdr.de>; Tue, 30 Jun 2026 19:51:57 +0200
X-Original-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B2F5E6E7088
	for <lists+openipmi-developer@lfdr.de>; Tue, 30 Jun 2026 19:51:56 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=lists.sourceforge.net header.s=beta header.b=F8r5vVIY;
	dkim=fail ("body hash did not verify") header.d=sourceforge.net header.s=x header.b=eRIb3+0P;
	dkim=fail ("body hash did not verify") header.d=sf.net header.s=x header.b=nTBMKrA+;
	dkim=fail ("body hash did not verify") header.d=kernel.org header.s=k20260515 header.b=HJCQ722M;
	spf=pass (mail.lfdr.de: domain of openipmi-developer-bounces@lists.sourceforge.net designates 216.105.38.7 as permitted sender) smtp.mailfrom=openipmi-developer-bounces@lists.sourceforge.net;
	dmarc=pass (policy=none) header.from=lists.sourceforge.net
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:References:
	Message-ID:To:Date:Sender:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=j2F86IPw8m8NEwEylmzNnndVCT6ZtYHwtHpX5uzdTLc=; b=F8r5vVIYUM9463YTHGIaaK4OU8
	yANVJn0/UMDpFyLir9KfJckBjCPqMF9WI/VAhta6YIuekgg9IeiGWTqK0z5WTZ9tzhpCbehWfY4XV
	T7p2g3coSayIBppLwJOOFzq1IHL1e/OTQAq1wDyEScUVcHJ8K72rRDI5jBMCVz0pCTWE=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1wecci-0002r9-5r;
	Tue, 30 Jun 2026 17:51:52 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <robh@kernel.org>) id 1wecch-0002qv-2Z
 for openipmi-developer@lists.sourceforge.net;
 Tue, 30 Jun 2026 17:51:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=rpVzYJiD4uvUrnHrs1i+rq74dWRX/dxoOQRnlJsTbJc=; b=eRIb3+0PtZpWo0FLlKUEGNfy8v
 nzeLk38/SroqnKydGZcgB0gAgwisYlqKhNC+yJrzttgziNnx56Nya5aSQoM7TIqI2ate2TCvtArvt
 H+lXJlFoWw3hUFCa/g9BcTqnFCWV9E0b/aBlwK+G7gDudALVXku153h+ja6ljPiBE0os=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=rpVzYJiD4uvUrnHrs1i+rq74dWRX/dxoOQRnlJsTbJc=; b=nTBMKrA+m5paQbejhWPs2hSuGa
 YBdTNHJrat0ZAy4ASrtc9H9DcbdeHWohDbIAY19DfPamsHxb2UZO4Osv5sfAX+b6ngQ5Kcn5ptWp1
 gXrSQjlgTWg0+zjot/snZomVPsp4nM1gRewe3fqdh1yb7yQvIQNSRtQ+k5SRO+8l8v1M=;
Received: from tor.source.kernel.org ([172.105.4.254])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1weccf-0000k2-Kl for openipmi-developer@lists.sourceforge.net;
 Tue, 30 Jun 2026 17:51:51 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
 by tor.source.kernel.org (Postfix) with ESMTP id 593B5600BB;
 Tue, 30 Jun 2026 17:51:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DAFF11F000E9;
 Tue, 30 Jun 2026 17:51:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
 s=k20260515; t=1782841904;
 bh=rpVzYJiD4uvUrnHrs1i+rq74dWRX/dxoOQRnlJsTbJc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To;
 b=HJCQ722MxU+MHC23BSrdoiEHDRw9Ql9TrNC02wM9iluQIfFS2pL7HTm4DMoIfgXor
 sZPsO5fe+UCnhgLboo8vr0TxYlvWoSm+8RdtT2FaMnWx7JPw0TX2lNogNtAM5ZteTw
 1kPr6vuoJgOVYliMJqn+WxyV5po2NSC7PUY1wPojHU/iIW2U9UbFEofK+nGj/7RIjd
 3DSwICjJtI0nh+5j6ehuYBM+m0cJZgkyxCrI7fDAXrV/x7GCwCEd9pXhsyxB0HIQJu
 iSdfJvxZ1SPFEXVsbW8oYXCvLLbzRKpZuZq4gN4PrBGSb4ybV8zVkVSfUroRrLgIN0
 CwPpm9MKm8V3Q==
Date: Tue, 30 Jun 2026 12:51:43 -0500
To: Krzysztof Kozlowski <krzk@kernel.org>
Message-ID: <20260630175143.GA4129206-robh@kernel.org>
References: <20260629-aspeed-bt-bmc-multichannel-v1-0-fc23ee337f7a@aspeedtech.com>
 <20260629-aspeed-bt-bmc-multichannel-v1-3-fc23ee337f7a@aspeedtech.com>
 <35a8e3b3-7725-4d1b-8667-84e6fa24b2ca@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <35a8e3b3-7725-4d1b-8667-84e6fa24b2ca@kernel.org>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, Jun 30, 2026 at 08:11:34AM +0200, Krzysztof Kozlowski
 wrote: > On 29/06/2026 08:49, Yu-Che Hsieh via B4 Relay wrote: > > From:
 Yu-Che Hsieh <yc_hsieh@aspeedtech.com> > > > > Allocating IO and [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1weccf-0000k2-Kl
Subject: Re: [Openipmi-developer] [PATCH 3/4] dt-bindings: ipmi: Add
 optional LPC properties to ASPEED BT devices
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
From: Rob Herring via Openipmi-developer
 <openipmi-developer@lists.sourceforge.net>
Reply-To: Rob Herring <robh@kernel.org>
Cc: devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>,
 linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org,
 Corey Minyard <corey@minyard.net>, yc_hsieh@aspeedtech.com,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 openipmi-developer@lists.sourceforge.net, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-6.11 / 15.00];
	WHITELIST_DMARC(-7.00)[sourceforge.net:D:+];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_RHS_MATCH_TO(1.00)[];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[216.105.38.7:from];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORWARDED(0.00)[openipmi-developer@lists.sourceforge.net];
	DKIM_MIXED(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:krzk@kernel.org,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:linux-aspeed@lists.ozlabs.org,m:linux-kernel@vger.kernel.org,m:corey@minyard.net,m:yc_hsieh@aspeedtech.com,m:krzk+dt@kernel.org,m:openipmi-developer@lists.sourceforge.net,m:linux-arm-kernel@lists.infradead.org,m:conor@kernel.org,s:lists@lfdr.de];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	REPLYTO_DOM_EQ_TO_DOM(0.00)[];
	FORGED_SENDER(0.00)[openipmi-developer@lists.sourceforge.net,openipmi-developer-bounces@lists.sourceforge.net];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,kernel.org:s=k20260515];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	DMARC_POLICY_ALLOW(0.00)[lists.sourceforge.net,none];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,kernel.org:-];
	TAGGED_RCPT(0.00)[openipmi-developer,dt];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[openipmi-developer@lists.sourceforge.net,openipmi-developer-bounces@lists.sourceforge.net];
	HAS_REPLYTO(0.00)[robh@kernel.org]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: B2F5E6E7088

On Tue, Jun 30, 2026 at 08:11:34AM +0200, Krzysztof Kozlowski wrote:
> On 29/06/2026 08:49, Yu-Che Hsieh via B4 Relay wrote:
> > From: Yu-Che Hsieh <yc_hsieh@aspeedtech.com>
> > 
> > Allocating IO and IRQ resources to LPC devices is in-theory an operation
> > 
> > for the host, however ASPEED systems describe these resources through
> > 
> > BMC-internal configuration, as already supported by the ASPEED KCS BMC
> 
> What
> 
> is
> 
> with
> 
> this
> 
> line breaks?

I've seen Codex do this... It amazes me how hard it is to get it to 
write properly formatted commit messages and then not forget how to 
write them.

Rob


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
