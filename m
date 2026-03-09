Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QE/CCJqmrmkFHQIAu9opvQ
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	for <lists+openipmi-developer@lfdr.de>; Mon, 09 Mar 2026 11:53:14 +0100
X-Original-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FC15237672
	for <lists+openipmi-developer@lfdr.de>; Mon, 09 Mar 2026 11:53:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:MIME-Version:References:Message-ID:To:From:Date:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=sWZe58lwFYIv/VIUjsq4NiD1DDXA9XjNK4h8IkvkbyU=; b=mpMGKdh79/6p7oAz3PeRd/P2o5
	H66bDGntsl+ULTbADCU7uah+wz1UVme5g0dXPxhwfWjL3kn/ur/Jr6Gp0aWHkql3g8JooIKFOc9Fd
	2usvot2TFPvxLAND8ccYHkFjpCsC+wl9/y3NNI0suIh3tPj+hUnFcftPVNZc1Vll9Qjc=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1vzYEQ-0006A2-9I;
	Mon, 09 Mar 2026 10:53:03 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <leitao@debian.org>) id 1vzYEO-00069k-Pw
 for openipmi-developer@lists.sourceforge.net;
 Mon, 09 Mar 2026 10:53:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=iktH1jROnqsVKKCnwzENbfNDMCokWUY8MGmKtoY2gsY=; b=Xaprg15ewSHyfpBGyGP+vH05Hd
 XoYAw+juXc/B05c1rhh3WYAftPWYfMTXvcSWSciFUDY3i9VcUminFX1S9wim+iurv4S9cBw2V0Ntl
 c3K4JZHeTH9so3SNgmFLbnr4xEg8em8ooDwepfx7gjJOBtb5oUY4AWU11wAE3Kcq7/EI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=iktH1jROnqsVKKCnwzENbfNDMCokWUY8MGmKtoY2gsY=; b=ZDta0a1BAztoxjQ8Alf7yTq6ON
 9qznbVO+/aMWna1qvQn9fshjlid+KVh/oEYrZDdREDNjBCJqe4UyALkBa3IdwIVD2SIYjtL54/kmS
 K0mnecO9QvANHXcmm57fmrpRBVZshV97E9tmjMTq09zcwqpzfZkCjq4XmVllGjG3kKMY=;
Received: from stravinsky.debian.org ([82.195.75.108])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1vzYEP-0000gM-4s for openipmi-developer@lists.sourceforge.net;
 Mon, 09 Mar 2026 10:53:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=debian.org; 
 s=smtpauto.stravinsky;
 h=X-Debian-User:In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=iktH1jROnqsVKKCnwzENbfNDMCokWUY8MGmKtoY2gsY=; b=Hu3BVn/bqAPA7o+m4BY7cW/Bt2
 RGDh5/sFw0ZgPCf0rFFbK06Ycm1AYLjZXUvxl4CoEF82cwr5bMi/hKVf0k4cQ812rTJgPnzL0y6/K
 IsMviG19LcWJQz9VULjBEjfZ1qgnbbdKCkUU53shHDq0Dzydk6xvtM5BHGPZ4LIiLOE9P8rrXHDP2
 w6f445lkzEDE8AJE+rVEXbbaEQxTuUp2aDH+UNI894OfLRQniBNH5xPyVisLKW5xXhcHilSD1+Q/S
 F4EIdmSUe2tVKFo8RaUXDAYenXsyRFo7vIwvCs4nLqBNv/1VhZSLJDsHWveF4exaILPeM/VLXazcd
 NNU+iPTQ==;
Received: from authenticated user by stravinsky.debian.org with esmtpsa
 (TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
 (Exim 4.94.2) (envelope-from <leitao@debian.org>)
 id 1vzYEA-002ARk-Kp; Mon, 09 Mar 2026 10:52:46 +0000
Date: Mon, 9 Mar 2026 03:52:41 -0700
From: Breno Leitao <leitao@debian.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Message-ID: <aa6mEr-pcU0iXNXG@gmail.com>
References: <20260309-ipmi_stable-v1-1-be09c9686671@debian.org>
 <2026030953-imaging-resize-ce85@gregkh>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2026030953-imaging-resize-ce85@gregkh>
X-Debian-User: leitao
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon, Mar 09, 2026 at 11:34:08AM +0100, Greg Kroah-Hartman
 wrote: > On Mon, Mar 09, 2026 at 03:16:13AM -0700, Breno Leitao wrote: >
 > From: Corey Minyard <corey@minyard.net> > > > > [ Upstream commi [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 UNPARSEABLE_RELAY Informational: message has unparseable relay lines
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1vzYEP-0000gM-4s
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
X-Rspamd-Queue-Id: 0FC15237672
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.11 / 15.00];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[216.105.38.7:from];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	DMARC_NA(0.00)[debian.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:gregkh@linuxfoundation.org,m:sashal@kernel.org,m:thevlad@meta.com,m:kernel-team@meta.com,m:linux-kernel@vger.kernel.org,m:stable@vger.kernel.org,m:corey@minyard.net,m:openipmi-developer@lists.sourceforge.net,m:stable@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[leitao@debian.org,openipmi-developer-bounces@lists.sourceforge.net];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[openipmi-developer@lists.sourceforge.net];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,debian.org:s=smtpauto.stravinsky];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,debian.org:-];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	NEURAL_HAM(-0.00)[-0.955];
	FROM_NEQ_ENVFROM(0.00)[leitao@debian.org,openipmi-developer-bounces@lists.sourceforge.net];
	FROM_HAS_DN(0.00)[];
	DKIM_MIXED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TAGGED_RCPT(0.00)[openipmi-developer];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[minyard.net:email,lists.sourceforge.net:dkim,lists.sourceforge.net:rdns,lists.sourceforge.net:helo]
X-Rspamd-Action: no action

On Mon, Mar 09, 2026 at 11:34:08AM +0100, Greg Kroah-Hartman wrote:
> On Mon, Mar 09, 2026 at 03:16:13AM -0700, Breno Leitao wrote:
> > From: Corey Minyard <corey@minyard.net>
> >
> > [ Upstream commit f9323a44994c2ccd5e0d582bac6f2b2a662e5603 ]
>
> This is not a valid git id in Linus's tree :(

Sorry about that, Greg. The correct commit is
594c11d0e1d445f580898a2b8c850f2e3f099368 ("ipmi: Fix use-after-free and
list corruption on sender error").



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
