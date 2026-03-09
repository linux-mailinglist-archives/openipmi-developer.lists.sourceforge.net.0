Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0LfQEBqmrmkFHQIAu9opvQ
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	for <lists+openipmi-developer@lfdr.de>; Mon, 09 Mar 2026 11:51:06 +0100
X-Original-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E1D3F237601
	for <lists+openipmi-developer@lfdr.de>; Mon, 09 Mar 2026 11:51:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:MIME-Version:References:Message-ID:To:From:Date:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=nuSScnAOjq8sdDVBUiRSmshvbQQLpQP7zoaGrsLhrHc=; b=Wg3z5WLbrG4U7QcEe7FDuuBmxI
	MH3+i9yJ+w6sQ3HIi9JNOlOmri8MDhLlo0C/KxD4yc0EfE9IqvQ+/C9EyhF4E8gvmfNPzz1R3MtXY
	SJZbgN1FwSTgTZCxDIgrg3xL8Mnk7hYVRJODfS1KsF5t0kVAT6w7L8tCMcnagpFBiDX0=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1vzYCN-0005yI-Qw;
	Mon, 09 Mar 2026 10:50:56 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <gregkh@linuxfoundation.org>) id 1vzYC5-0005wU-76
 for openipmi-developer@lists.sourceforge.net;
 Mon, 09 Mar 2026 10:50:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ifjQoLfG3E8GTP6UFKCdvPgIbKPpci5M1xrIjDwaeU0=; b=m6BRXr3PyGx9bgrU9GTK/Vndo4
 j2+dKqEcFV9k20OBfzs44xA5NA8UFBCs/mu/GXj9H81JOfnJyEHOqLENJLOfXs1hBaGJSZQAn8J/d
 uE5NK4qVLO7P4nQfE7nlUQ4Qpr5LOLTeMksjOIlgrrZoDvNiQDZVLiMGWud6S7RXFzSs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ifjQoLfG3E8GTP6UFKCdvPgIbKPpci5M1xrIjDwaeU0=; b=G/Lt0vSLP7/Ml8nIi7T5GTUJaI
 +BC7W+R4x4USxKgt2pGCNymnaB67GkoRCSBcE/C33bIz/AQzZn8Ck3fpUzJ16ignZn3Iusyx0Qxt6
 oojNbPND6THfRwt26+aBDQ13h6Ubo8J8VbWTh4bB+wAJ8HtOplPPOPtOseLsyrC+EAdc=;
Received: from sea.source.kernel.org ([172.234.252.31])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1vzYBx-0000bK-FL for openipmi-developer@lists.sourceforge.net;
 Mon, 09 Mar 2026 10:50:29 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 99822440D5;
 Mon,  9 Mar 2026 10:34:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EB3C3C4CEF7;
 Mon,  9 Mar 2026 10:34:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1773052451;
 bh=TNlUigElmImpUSq5TN7YcHXgKOKuN7SKd3UBymVVzOs=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=RkLMQ2DXMC8QGFNcLsrBEA4W+O+mQpceVrIpl1v2+ddg27eJBei7AV5Mua4krWgMR
 5sW1JVeEj/rIqpVavK2pKHqhTLEbOswhbren+KptKlcWxq2Z5ttWnX456gyBn0OjcR
 UHxm4U0REqnSmFU23IhRDUBZb29y7jLgunJx1gbA=
Date: Mon, 9 Mar 2026 11:34:08 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Breno Leitao <leitao@debian.org>
Message-ID: <2026030953-imaging-resize-ce85@gregkh>
References: <20260309-ipmi_stable-v1-1-be09c9686671@debian.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260309-ipmi_stable-v1-1-be09c9686671@debian.org>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon, Mar 09, 2026 at 03:16:13AM -0700, Breno Leitao wrote:
 > From: Corey Minyard <corey@minyard.net> > > [ Upstream commit
 f9323a44994c2ccd5e0d582bac6f2b2a662e5603
 ] This is not a valid git id in Linus's tree :( 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1vzYBx-0000bK-FL
Subject: Re: [Openipmi-developer] [PATCH stable] ipmi: Fix use-after-free
 and list corruption on sender error
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
Cc: Sasha Levin <sashal@kernel.org>, Vlad Poenaru <thevlad@meta.com>,
 kernel-team@meta.com, linux-kernel@vger.kernel.org, stable@vger.kernel.org,
 Corey Minyard <corey@minyard.net>, openipmi-developer@lists.sourceforge.net,
 stable@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net
X-Rspamd-Queue-Id: E1D3F237601
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [3.49 / 15.00];
	MID_END_EQ_FROM_USER_PART(4.00)[];
	MID_RHS_NOT_FQDN(0.50)[];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[216.105.38.7:from];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[linuxfoundation.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:leitao@debian.org,m:sashal@kernel.org,m:thevlad@meta.com,m:kernel-team@meta.com,m:linux-kernel@vger.kernel.org,m:stable@vger.kernel.org,m:corey@minyard.net,m:openipmi-developer@lists.sourceforge.net,m:stable@kernel.org,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[gregkh@linuxfoundation.org,openipmi-developer-bounces@lists.sourceforge.net];
	TO_DN_SOME(0.00)[];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,linuxfoundation.org:s=korg];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[openipmi-developer@lists.sourceforge.net];
	DKIM_MIXED(0.00)[];
	NEURAL_SPAM(0.00)[0.163];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[gregkh@linuxfoundation.org,openipmi-developer-bounces@lists.sourceforge.net];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,linuxfoundation.org:-];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[openipmi-developer];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.sourceforge.net:dkim,lists.sourceforge.net:rdns,lists.sourceforge.net:helo,minyard.net:email]
X-Rspamd-Action: no action

On Mon, Mar 09, 2026 at 03:16:13AM -0700, Breno Leitao wrote:
> From: Corey Minyard <corey@minyard.net>
> 
> [ Upstream commit f9323a44994c2ccd5e0d582bac6f2b2a662e5603 ]

This is not a valid git id in Linus's tree :(


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
