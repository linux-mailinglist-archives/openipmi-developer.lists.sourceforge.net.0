Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YNizNmPOeGmNtQEAu9opvQ
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	for <lists+openipmi-developer@lfdr.de>; Tue, 27 Jan 2026 15:40:35 +0100
X-Original-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2078695DC7
	for <lists+openipmi-developer@lfdr.de>; Tue, 27 Jan 2026 15:40:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:MIME-Version:References:Message-ID:To:From:Date:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=UYj3mlzZuluryFQ4Al5Ukd1rSROlL7IdMZLwVRph6LU=; b=Rqm4dTG6EZhKVtK08+efkGcxx5
	oVMBJGiIVByC9OeN5LpIk6IiwBOtbJBvV04gqMhtXaTDXpaqGQyMZkKTejFOZZwWTEL+nQkR26xEU
	Q7nj+Q6u4mIiDRYmcODrGdWkshr5r8D6m7AKXo0Z2dK7vDNHPEtvmy4jD954BK08zArQ=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1vkkF0-0000fN-MA;
	Tue, 27 Jan 2026 14:40:26 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <leitao@debian.org>) id 1vkkEz-0000fG-92
 for openipmi-developer@lists.sourceforge.net;
 Tue, 27 Jan 2026 14:40:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=sSCRTJkHjV6hfRcqDI9HgGinn8gN2MRzlQFI0aQb7Yk=; b=keIFv3n9+ryryqR06eAAwk4u+x
 np9IaPYVD2iwUf8JIZzFgrpp/VZGcWgiofkhY0rhw6T/M6uZjcEq30nKz6aL9NnQwf72wOGBLASeI
 dt7dSpG1XWbcQjTSJmqlIpZIDJN2e2f4oTtUj0ecDUY4NkpuV5+SlMOp2LaHHbO7i/Lw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=sSCRTJkHjV6hfRcqDI9HgGinn8gN2MRzlQFI0aQb7Yk=; b=AFV/GXYV+sQoFXNdyCmskMacd4
 /M8vDJ/JSKe2dQrY0dAb29p2GKyHEAtvM5PMwmp0IVoBapCDyqqM0qFo/fSKQUR/ZceAvGU6icscE
 yXQEuzZ+vRU+/4S7sKwCUlsFm0b3IpwuecaczteIFjAqXcNWQ6GRjHDtbesjfmL4392w=;
Received: from stravinsky.debian.org ([82.195.75.108])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1vkkEy-0007XV-TK for openipmi-developer@lists.sourceforge.net;
 Tue, 27 Jan 2026 14:40:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=debian.org; 
 s=smtpauto.stravinsky;
 h=X-Debian-User:In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=sSCRTJkHjV6hfRcqDI9HgGinn8gN2MRzlQFI0aQb7Yk=; b=SAbTimthHgOBBaPpbxBm3SiA4h
 SZ8CdhLnrmsnxaq2OCezRH5uphD9RhS2q8RYMus2eYqStH4BUF9P8KE1agn2oMB48ZKIcXbqAQV9P
 Zies7tGHssbJg0CeKSSzVi9nsT6ksCIBUlG7CfKAThi8HLKCPL2kguGaYCgGfCnvhiGsilMF6NEs+
 j2jpa8kT4x/1GrjB4xsRzaj6cCH1NS/88Wz7ZzAwGNK7h+FutLGQ7VJUmMx3geV4dkONRlUxq6g/G
 B3YlCtdv44S4+k6iaTWUp/tPk7dgNHy3UkiFCeZoFqqtFzeTn0ZFkPoF3I1lavB85MAucsEvmILDv
 hNGbqIvQ==;
Received: from authenticated user by stravinsky.debian.org with esmtpsa
 (TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
 (Exim 4.94.2) (envelope-from <leitao@debian.org>)
 id 1vkkEi-00H3iR-TZ; Tue, 27 Jan 2026 14:40:09 +0000
Date: Tue, 27 Jan 2026 06:40:04 -0800
From: Breno Leitao <leitao@debian.org>
To: Corey Minyard <corey@minyard.net>
Message-ID: <aXjOK6ff9Va2hiNU@gmail.com>
References: <20260127-ipmi-v1-0-ba5cc90f516f@debian.org>
 <20260127135917.1597762-1-corey@minyard.net>
 <20260127135917.1597762-2-corey@minyard.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260127135917.1597762-2-corey@minyard.net>
X-Debian-User: leitao
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, Jan 27, 2026 at 07:54:39AM -0600,
 Corey Minyard wrote:
 > The analysis from Breno: > > When the SMI sender returns an error, smi_work()
 delivers an error > response but then jumps back to resta [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 UNPARSEABLE_RELAY Informational: message has unparseable relay lines
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1vkkEy-0007XV-TK
Subject: Re: [Openipmi-developer] [PATCH 1/2] ipmi: Fix use-after-free and
 list corruption on sender error
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
Cc: kernel-team@meta.com, llvm@lists.linux.dev,
 Nick Desaulniers <nick.desaulniers+lkml@gmail.com>,
 linux-kernel@vger.kernel.org, Nathan Chancellor <nathan@kernel.org>,
 Bill Wendling <morbo@google.com>, Justin Stitt <justinstitt@google.com>,
 openipmi-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.79 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	DKIM_MIXED(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DMARC_NA(0.00)[debian.org];
	FORGED_SENDER(0.00)[leitao@debian.org,openipmi-developer-bounces@lists.sourceforge.net];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:corey@minyard.net,m:kernel-team@meta.com,m:llvm@lists.linux.dev,m:nick.desaulniers+lkml@gmail.com,m:linux-kernel@vger.kernel.org,m:nathan@kernel.org,m:morbo@google.com,m:justinstitt@google.com,m:openipmi-developer@lists.sourceforge.net,m:nickdesaulniers@gmail.com,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[openipmi-developer@lists.sourceforge.net];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[meta.com,lists.linux.dev,gmail.com,vger.kernel.org,kernel.org,google.com,lists.sourceforge.net];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[leitao@debian.org,openipmi-developer-bounces@lists.sourceforge.net];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,debian.org:s=smtpauto.stravinsky];
	RCPT_COUNT_SEVEN(0.00)[9];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,debian.org:-];
	TAGGED_RCPT(0.00)[openipmi-developer,lkml];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[minyard.net:email]
X-Rspamd-Queue-Id: 2078695DC7
X-Rspamd-Action: no action

On Tue, Jan 27, 2026 at 07:54:39AM -0600, Corey Minyard wrote:
> The analysis from Breno:
> 
> When the SMI sender returns an error, smi_work() delivers an error
> response but then jumps back to restart without cleaning up properly:
> 
> 1. intf->curr_msg is not cleared, so no new message is pulled
> 2. newmsg still points to the message, causing sender() to be called
>    again with the same message
> 3. If sender() fails again, deliver_err_response() is called with
>    the same recv_msg that was already queued for delivery
> 
> This causes list_add corruption ("list_add double add") because the
> recv_msg is added to the user_msgs list twice. Subsequently, the
> corrupted list leads to use-after-free when the memory is freed and
> reused, and eventually a NULL pointer dereference when accessing
> recv_msg->done.
> 
> The buggy sequence:
> 
>   sender() fails
>     -> deliver_err_response(recv_msg)  // recv_msg queued for delivery
>     -> goto restart                    // curr_msg not cleared!
>   sender() fails again (same message!)
>     -> deliver_err_response(recv_msg)  // tries to queue same recv_msg
>     -> LIST CORRUPTION
> 
> Fix this by freeing the message and setting it to NULL on a send error.
> Also, always free the newmsg on a send error, otherwise it will leak.
> 
> Reported-by: Breno Leitao <leitao@debian.org>
> Fixes: 9cf93a8fa9513 ("ipmi: Allow an SMI sender to return an error")
> Signed-off-by: Corey Minyard <corey@minyard.net>

Reviewed-by: Breno Leitao <leitao@debian.org>

--breno


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
