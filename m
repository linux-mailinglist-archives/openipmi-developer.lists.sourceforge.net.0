Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eKEqL3WqrmntHQIAu9opvQ
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	for <lists+openipmi-developer@lfdr.de>; Mon, 09 Mar 2026 12:09:41 +0100
X-Original-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AC462379E6
	for <lists+openipmi-developer@lfdr.de>; Mon, 09 Mar 2026 12:09:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:MIME-Version:References:Message-ID:To:From:Date:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Lq6zluMnRxlAE6zU/x7YwqjT0TzLbWy8ixSGFuPLuLc=; b=T+OZuxzxH4Rvx4uUFXSz1xRFXy
	QJcQnqU6lEDzo46iTbozRp2ScBAfupIvXx9cUsSBoauxQAhoiYQVWu1g3yjgaQkhDEx4Mj/6Y6naD
	EYlf6yGdm1hOhaikhR7+K7RA3K9MgZcfRXOLJp825bStKMKj90chEWDwD5i5+qrfxSJU=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1vzYUP-0000un-Ju;
	Mon, 09 Mar 2026 11:09:33 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <gregkh@linuxfoundation.org>) id 1vzYUO-0000uf-Ey
 for openipmi-developer@lists.sourceforge.net;
 Mon, 09 Mar 2026 11:09:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=jGqMujcE8bnJcqmfgh1/1r1DIo16VjE3qrtGbBXlxpo=; b=e+4E6BLIOd0TZBh9A44ErJhYyu
 QzgrczNo+C2X94SkAcM8Fte9kRWdF9M1raDQgeUKHAplduAfb8lUt3rcAYaI/K7p5nMVN+c8rDvHI
 0Co1teigznLmrxxQ3wVmy2abmeMckjQEZO6gCjoelMtYoesrqR2qvqSmq4lXvUhrY4sY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=jGqMujcE8bnJcqmfgh1/1r1DIo16VjE3qrtGbBXlxpo=; b=P5rchn3Cm0HEQtlTot+0Y7RFCp
 lVVjvtB15S9xftge7KCQeZvSKFfqjf04pW9cJrRAk6RIVMkwITtViJfwKISc+dxh71xmxOqa+MPh3
 xu/Hhan1fT6PplOKoA2wrpKgoJIYqLJnV8UP/1kWC2tbplPSPApS7sJpQwaeQIKvn29k=;
Received: from tor.source.kernel.org ([172.105.4.254])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1vzYUO-0001k0-1o for openipmi-developer@lists.sourceforge.net;
 Mon, 09 Mar 2026 11:09:32 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 698E060130;
 Mon,  9 Mar 2026 11:09:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C4D27C2BC87;
 Mon,  9 Mar 2026 11:09:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1773054566;
 bh=C9CxlbuBkYwey1uKH3/UlC0KxzYwZ9MsY3WLQ4axT28=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=hLReKhy5BDQfAiDiC/tv1nvYT+cE3jvBWEVy06oQ4Q9AtYOvfnMO0aHPPIk8s3O0S
 IlDzKpQhBAm1E1ZFmCmX3XHrV5/qI86OP03PTgtME0Ti8juq9eMIDzqW4icwM1blaa
 MpO5s1WImxkoCZ5tErxdJ5FjGpAme4R5i1IRf+34=
Date: Mon, 9 Mar 2026 12:07:14 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Breno Leitao <leitao@debian.org>
Message-ID: <2026030957-stricken-pebble-7b5a@gregkh>
References: <20260309-ipmi_stable-v1-1-be09c9686671@debian.org>
 <2026030953-imaging-resize-ce85@gregkh>
 <aa6mEr-pcU0iXNXG@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <aa6mEr-pcU0iXNXG@gmail.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon, Mar 09, 2026 at 03:52:41AM -0700, Breno Leitao wrote:
 > On Mon, Mar 09, 2026 at 11:34:08AM +0100, Greg Kroah-Hartman wrote: > >
 On Mon, Mar 09, 2026 at 03:16:13AM -0700, Breno Leitao wrote: > [...] 
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
X-Headers-End: 1vzYUO-0001k0-1o
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
X-Rspamd-Queue-Id: 5AC462379E6
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [3.49 / 15.00];
	MID_END_EQ_FROM_USER_PART(4.00)[];
	MID_RHS_NOT_FQDN(0.50)[];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[216.105.38.7:from];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[linuxfoundation.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:leitao@debian.org,m:sashal@kernel.org,m:thevlad@meta.com,m:kernel-team@meta.com,m:linux-kernel@vger.kernel.org,m:stable@vger.kernel.org,m:corey@minyard.net,m:openipmi-developer@lists.sourceforge.net,m:stable@kernel.org,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER(0.00)[gregkh@linuxfoundation.org,openipmi-developer-bounces@lists.sourceforge.net];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,linuxfoundation.org:s=korg];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[openipmi-developer@lists.sourceforge.net];
	DKIM_MIXED(0.00)[];
	NEURAL_SPAM(0.00)[0.069];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[minyard.net:email,lists.sourceforge.net:dkim,lists.sourceforge.net:rdns,lists.sourceforge.net:helo]
X-Rspamd-Action: no action

On Mon, Mar 09, 2026 at 03:52:41AM -0700, Breno Leitao wrote:
> On Mon, Mar 09, 2026 at 11:34:08AM +0100, Greg Kroah-Hartman wrote:
> > On Mon, Mar 09, 2026 at 03:16:13AM -0700, Breno Leitao wrote:
> > > From: Corey Minyard <corey@minyard.net>
> > >
> > > [ Upstream commit f9323a44994c2ccd5e0d582bac6f2b2a662e5603 ]
> >
> > This is not a valid git id in Linus's tree :(
> 
> Sorry about that, Greg. The correct commit is
> 594c11d0e1d445f580898a2b8c850f2e3f099368 ("ipmi: Fix use-after-free and
> list corruption on sender error").
> 

Great, can you resend it?  And also let us know what branches you want
this applied to?

thanks,

greg k-h


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
