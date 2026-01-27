Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +BgmD+nPeGmNtQEAu9opvQ
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	for <lists+openipmi-developer@lfdr.de>; Tue, 27 Jan 2026 15:47:05 +0100
X-Original-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9235895F8E
	for <lists+openipmi-developer@lfdr.de>; Tue, 27 Jan 2026 15:47:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:
	List-Id:Subject:In-Reply-To:MIME-Version:References:Message-ID:To:From:Date:
	Sender:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=XZB6vAX9JkWNzei+NZrTk81+olVud8zp+0kZVwKPoqo=; b=CstLD+9qm1/bDmA5uruysYNE0k
	HMSp9S+Wdxtts1QY7pEPoQLK7xkOM41NDdgiDSIc6AaPq7sN6XJPF9tPuqAW43z8Qk3EXXXC2VtiW
	G/PSmH4HozLN02E68MWwcWGf4AP4+x9ROhFJ1rUWWS5kH/ZSvS+A06EZbNdNEWQuur5E=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1vkkLI-0003iY-TM;
	Tue, 27 Jan 2026 14:46:56 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <corey@minyard.net>) id 1vkkLI-0003iP-BH
 for openipmi-developer@lists.sourceforge.net;
 Tue, 27 Jan 2026 14:46:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=6Tb2f1vtujh1yFSAc7vww/wAqd7C0+upyJOHXMhwugE=; b=VMTEpWtmx9Zq2paOaO2glX9umo
 2aJvqM68YG2jn4R1r0sdB7+7cEGBPgi7cgrqYR9JFKs42vJA2XS719cDQ45O91M/3hploYYxqll+G
 DBmh2qa9tOB7b3Gz6Sba5G3pOEzEhNEuKrdXd/mikOGoig160eHUFmC41kDTV5Q6lh2E=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=6Tb2f1vtujh1yFSAc7vww/wAqd7C0+upyJOHXMhwugE=; b=M/9/xez8OWuJDoQMEPfz1Q0oyE
 FJJPajh1oHjba7CqojqiPfCbzWMJuUYcUtPPwD4HhXRvTz+3PojiEiJO4a9H29yfYWt/CqiPPaKSg
 ez+bM2BjD6DHSg0tX2B0DHw6wZ9Nac6fu1SxOB6JfVHVVfST2tgwOOOP6V+oBcOuZtPQ=;
Received: from mail-oa1-f46.google.com ([209.85.160.46])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1vkkLH-0007tN-Nc for openipmi-developer@lists.sourceforge.net;
 Tue, 27 Jan 2026 14:46:56 +0000
Received: by mail-oa1-f46.google.com with SMTP id
 586e51a60fabf-408c881bbaaso2085340fac.1
 for <openipmi-developer@lists.sourceforge.net>;
 Tue, 27 Jan 2026 06:46:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=minyard.net; s=google; t=1769525210; x=1770130010; darn=lists.sourceforge.net;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:from:to:cc:subject:date
 :message-id:reply-to;
 bh=6Tb2f1vtujh1yFSAc7vww/wAqd7C0+upyJOHXMhwugE=;
 b=UOX+44XOgcOD/oZywhd2+2qaTjxpm821QsLBGxSWhemIy5TYOrIjOYQLV3pX6BoO4G
 CwTogSHUFtspQJtWQ/r4V2UEmC+oCiUuCWRjBB94Po/inntnct/rYTtbz0YYR0obsaUy
 VrWfStXBVLf/yORAlhFqx9xWzjhKu4oFlU1qIDLT+gPtSqhaOW/bNRxTi5nX+fuN7rCP
 m6T+II6YUkuoUcKlrIRRRfuVpssA4P/BNuPgD1VB6gZy/J0f7FH/2Lr5S9JBpcSDrdP9
 0Fj3GdgI667GURbgtwXJF362tnr/OYLzNtiilksT3Zrm1hMvLDZoBnTpZhaevOIRelST
 m54g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1769525210; x=1770130010;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=6Tb2f1vtujh1yFSAc7vww/wAqd7C0+upyJOHXMhwugE=;
 b=WcRw++D+PdqLA/HUdYwxqgrzVzIIdz4Hspeppnt6zzIzsYEJS+ZbUoTegAdp5Km7RO
 ZnKhqquqKIk5oePCmYVkLScAwmacDT/3Nouowl0rWcLJzi2aXghBpe+VdI59Sn0h4/x0
 eO3pSNFXsPJj50er2rOdri6jybeuQP1wKbxwlyXmjB4vfgtT+PX5gM816itsLymvYJgc
 EoNKR1CbNgqHl8CuC4oYrZtFzhUNrJBmJsBA2f8SWeanNKc7jh7ahAIjkvGThZ4akBRX
 IO5lD/NKbsr/BmtoH+OMXjYR8r7wlQT+SKEa1emlorv4xAh3LaxX3MEBL6+zMlJlzJmv
 R1ow==
X-Forwarded-Encrypted: i=1;
 AJvYcCVPtoUx+8mIOqsKorE+BjAuSBetJ0AzgMBsyU0E/2F+7Mcio5iWBj/QXj243B/pj5ea1YnEw1TaVeaOEvaZlUSOLVU=@lists.sourceforge.net
X-Gm-Message-State: AOJu0Yy59yJC3CEZkjxrT1A83MhtchkPjkxBvnL5/MM0NTIRlc1Eo2+k
 IaOJ1OjcxJyEFqNW7VFQZn7IiTicx84zJsR+vX2crybI3Ek8CDVz7/j+jtcHBNfi7VY=
X-Gm-Gg: AZuq6aK5SqBeolCK9VjlqmWKHyEISJar3xCUZeV/vXtNmvgPSysUyMN3hIr6Qg9z7+u
 c8o8lAcVd8D8aoaKh07kqGzW+ud0eAgdu6LOMDqR+o+nODiY1cIkzr6d0cViD565xPfpNwP9hft
 9lTFH6HmZfWaInvxF8lk3lei5fn2eZVONk5yhE24k7kegdHre/xrcovCLJ4CsopWediga/eYf/d
 dXJ17tiCgUzqTyQaZNwYzB7iuMd1Gd+TkbceHQeCdnzGX6z3YryICkrDHjmjE4mCyagcFSyRSiu
 CkKF9JuUNf2/pnS0oHRXI4ZczME6JwQ5NZAteRt7sDVXkzI+MltJqV6Hw7EcFllth6zKqNVcRbY
 ccMp4Xx4Wb2S0H0r1HRtARA5eQdJvaZfdWh7xuucUdvUm8mLwPyCs7o/zIjl5qdnIqmKDqOwEpe
 S5UPjqZyFAPKXjPtHLVFLt3m/jzb/Kp2W+ifUXc8vGXdgP2ibr7+gcNUmHgw6FRuDYXYmy8cmjt
 w8=
X-Received: by 2002:a05:6820:1caa:b0:659:9a49:8fb8 with SMTP id
 006d021491bc7-662f20d4644mr1237703eaf.49.1769525209964; 
 Tue, 27 Jan 2026 06:46:49 -0800 (PST)
Received: from mail.minyard.net ([2001:470:b8f6:1b:a1a5:d807:e7a1:53eb])
 by smtp.gmail.com with ESMTPSA id
 006d021491bc7-662cb4f29e1sm6739005eaf.7.2026.01.27.06.46.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 27 Jan 2026 06:46:49 -0800 (PST)
Date: Tue, 27 Jan 2026 08:46:44 -0600
From: Corey Minyard <corey@minyard.net>
To: Breno Leitao <leitao@debian.org>
Message-ID: <aXjP1Hqsig7Z4m-7@mail.minyard.net>
References: <20260127-ipmi-v1-0-ba5cc90f516f@debian.org>
 <20260127135917.1597762-1-corey@minyard.net>
 <20260127135917.1597762-2-corey@minyard.net>
 <aXjOK6ff9Va2hiNU@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <aXjOK6ff9Va2hiNU@gmail.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, Jan 27, 2026 at 06:40:04AM -0800, Breno Leitao wrote:
 > On Tue, Jan 27, 2026 at 07:54:39AM -0600, Corey Minyard wrote: > > The
 analysis from Breno: > > > > When the SMI sender returns an error [...] 
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
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.46 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1vkkLH-0007tN-Nc
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
Reply-To: corey@minyard.net
Cc: kernel-team@meta.com, llvm@lists.linux.dev,
 Nick Desaulniers <nick.desaulniers+lkml@gmail.com>,
 linux-kernel@vger.kernel.org, Nathan Chancellor <nathan@kernel.org>,
 Bill Wendling <morbo@google.com>, Justin Stitt <justinstitt@google.com>,
 openipmi-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7:c];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[minyard.net : SPF not aligned (strict), DKIM not aligned (strict),none];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_MIXED(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,minyard.net:s=google];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:leitao@debian.org,m:kernel-team@meta.com,m:llvm@lists.linux.dev,m:nick.desaulniers+lkml@gmail.com,m:linux-kernel@vger.kernel.org,m:nathan@kernel.org,m:morbo@google.com,m:justinstitt@google.com,m:openipmi-developer@lists.sourceforge.net,m:nickdesaulniers@gmail.com,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[meta.com,lists.linux.dev,gmail.com,vger.kernel.org,kernel.org,google.com,lists.sourceforge.net];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[corey@minyard.net,openipmi-developer-bounces@lists.sourceforge.net];
	FORWARDED(0.00)[openipmi-developer@lists.sourceforge.net];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,minyard.net:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	HAS_REPLYTO(0.00)[corey@minyard.net];
	RCVD_COUNT_FIVE(0.00)[5];
	PREVIOUSLY_DELIVERED(0.00)[openipmi-developer@lists.sourceforge.net];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[corey@minyard.net,openipmi-developer-bounces@lists.sourceforge.net];
	REPLYTO_ADDR_EQ_FROM(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	TAGGED_RCPT(0.00)[openipmi-developer,lkml];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[minyard.net:replyto,minyard.net:email,lists.sourceforge.net:dkim,lists.sourceforge.net:helo,lists.sourceforge.net:rdns]
X-Rspamd-Queue-Id: 9235895F8E
X-Rspamd-Action: no action

On Tue, Jan 27, 2026 at 06:40:04AM -0800, Breno Leitao wrote:
> On Tue, Jan 27, 2026 at 07:54:39AM -0600, Corey Minyard wrote:
> > The analysis from Breno:
> > 
> > When the SMI sender returns an error, smi_work() delivers an error
> > response but then jumps back to restart without cleaning up properly:
> > 
> > 1. intf->curr_msg is not cleared, so no new message is pulled
> > 2. newmsg still points to the message, causing sender() to be called
> >    again with the same message
> > 3. If sender() fails again, deliver_err_response() is called with
> >    the same recv_msg that was already queued for delivery
> > 
> > This causes list_add corruption ("list_add double add") because the
> > recv_msg is added to the user_msgs list twice. Subsequently, the
> > corrupted list leads to use-after-free when the memory is freed and
> > reused, and eventually a NULL pointer dereference when accessing
> > recv_msg->done.
> > 
> > The buggy sequence:
> > 
> >   sender() fails
> >     -> deliver_err_response(recv_msg)  // recv_msg queued for delivery
> >     -> goto restart                    // curr_msg not cleared!
> >   sender() fails again (same message!)
> >     -> deliver_err_response(recv_msg)  // tries to queue same recv_msg
> >     -> LIST CORRUPTION
> > 
> > Fix this by freeing the message and setting it to NULL on a send error.
> > Also, always free the newmsg on a send error, otherwise it will leak.
> > 
> > Reported-by: Breno Leitao <leitao@debian.org>
> > Fixes: 9cf93a8fa9513 ("ipmi: Allow an SMI sender to return an error")
> > Signed-off-by: Corey Minyard <corey@minyard.net>
> 
> Reviewed-by: Breno Leitao <leitao@debian.org>

Thanks, I'll put this into the next tree and send it up after a bit
if everything is ok there.

-corey

> 
> --breno


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
