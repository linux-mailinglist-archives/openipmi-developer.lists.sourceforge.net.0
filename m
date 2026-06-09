Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id CTcKE+h8J2qsyAIAu9opvQ
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	for <lists+openipmi-developer@lfdr.de>; Tue, 09 Jun 2026 04:39:36 +0200
X-Original-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EE8C65BDF2
	for <lists+openipmi-developer@lfdr.de>; Tue, 09 Jun 2026 04:39:35 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=lists.sourceforge.net header.s=beta header.b="Ub/QMP0V";
	dkim=fail ("body hash did not verify") header.d=sourceforge.net header.s=x header.b=MJKA3EB8;
	dkim=fail ("body hash did not verify") header.d=sf.net header.s=x header.b=WFFYTacE;
	dkim=fail ("body hash did not verify") header.d=bytedance.com header.s=2212171451 header.b=brOg4vhY;
	spf=pass (mail.lfdr.de: domain of openipmi-developer-bounces@lists.sourceforge.net designates 216.105.38.7 as permitted sender) smtp.mailfrom=openipmi-developer-bounces@lists.sourceforge.net;
	dmarc=pass (policy=none) header.from=lists.sourceforge.net
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:Date:References:To:In-Reply-To:Mime-Version:
	Message-Id:Sender:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=bikuV8miLb3KZeuiAgueS2801UQaPZiMVcnRDkyxepw=; b=Ub/QMP0VrjSW9xpFP0cUb/9YOe
	mxOJbjpPvb0MPSfyCusG+ZJO7xL0ujMwlCTcfQUq6T/Om3BhTz9rmJE9e/a04r+0s22wL0kkXyrRR
	CLj9OBw4gwhs+8IaunbtzKGRY2vPEqJbo4HDWQri250Uu+xajFBbgiSmBzQSagOmPyIU=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1wWmN7-0003Ia-1M;
	Tue, 09 Jun 2026 02:39:21 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <qirui.001@bytedance.com>) id 1wWmN5-0003IL-HC
 for openipmi-developer@lists.sourceforge.net;
 Tue, 09 Jun 2026 02:39:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Date:References:Subject:Content-Transfer-Encoding:
 To:In-Reply-To:Mime-Version:Cc:Content-Type:Message-Id:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=YByv+LbPJJ92qkS0OnkgT6wcRgCzHujI4ZV9YijjdSI=; b=MJKA3EB8Tfw+Q/fRUII3qY73YA
 GTouV6DboaGRF0mVt3iI+redVGHnorHCKTajmcgUPzO8GhOiCrDoqmxJOGegoSa3eYlDD3TixPtSH
 yX9Dj0cCcnzWVs68PCnlOGNCrw7VGYC5/RzYkyP6iDx5sQ07yzsSTz/JB9GuL9TD3uFc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Date:References:Subject:Content-Transfer-Encoding:To:In-Reply-To:
 Mime-Version:Cc:Content-Type:Message-Id:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=YByv+LbPJJ92qkS0OnkgT6wcRgCzHujI4ZV9YijjdSI=; b=WFFYTacEj1ZMZr5umxAJcmZhp5
 ZeOK6DufdLEPHuXfOV9WyFql2sO7hsFYOClVxgsDMuY+hnHJs6A3ZQF/aO4acw2prhWmELnj2KfLz
 C0EXJRzxwa5I1CprZxvcipGYWXz5vkERk0RZYN/f5xJhJFmROyyKzTwFeiYrUN+0Mw+s=;
Received: from va-1-115.ptr.blmpb.com ([209.127.230.115])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1wWmN3-0000jA-On for openipmi-developer@lists.sourceforge.net;
 Tue, 09 Jun 2026 02:39:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 s=2212171451; d=bytedance.com; t=1780972743; h=from:subject:
 mime-version:from:date:message-id:subject:to:cc:reply-to:content-type:
 mime-version:in-reply-to:message-id;
 bh=YByv+LbPJJ92qkS0OnkgT6wcRgCzHujI4ZV9YijjdSI=;
 b=brOg4vhY5wi9fPZWGOFAilg5r+fJ/d6Skz16f4CSzfm358ImXh6AHZ3V+hPJuheyJI/frW
 Op090BZhx8r6ro+6DK1JbNgCyUGlhzipPTSclHUjTl78vgiuzG+bW2ALJV8/yA808v/wGG
 hrR3WBqBsbgwDIcqCDd/PjAosTW7ZvwAgH7SVXonskIA7wiLpg0K1o/Y3+Ffalx+DAff4U
 EiSIh5GeISLesaEk/uOTCMdwKW7VFr2wO88xLOlSG6oAjlTtnYw7N/PMtlOi8pa67Sq9SY
 UDfVMNXkdrs1L/UEJfipjS3fs9nb5YJXM+C5kdYhnI3e34VAY/a1bblhYEyElg==
Message-Id: <e48c88e4-b865-47e9-8b23-7c346a11769f@bytedance.com>
Mime-Version: 1.0
In-Reply-To: <aibYi72tthY8VX8V@mail.minyard.net>
To: <corey@minyard.net>
X-Lms-Return-Path: <lba+26a277cc5+df2077+lists.sourceforge.net+qirui.001@bytedance.com>
X-Original-From: Rui Qi <qirui.001@bytedance.com>
References: <20260525063235.990101-1-qirui.001@bytedance.com>
 <20260608112000.1-qirui.001@bytedance.com>
 <aibYi72tthY8VX8V@mail.minyard.net>
User-Agent: Mozilla Thunderbird
Date: Tue, 9 Jun 2026 10:38:46 +0800
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 6/8/26 10:58 PM, Corey Minyard wrote: > On Mon, Jun 08,
 2026 at 11:27:54AM +0800, Rui Qi wrote: >> Hi Corey, >> >> I'm following
 up on this patch which was originally submitted on >> March 25 and r [...]
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
X-Headers-End: 1wWmN3-0000jA-On
Subject: Re: [Openipmi-developer] [PATCH v2] ipmi: Fix rcu_read_unlock to
 srcu_read_unlock in handle_read_event_rsp
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
From: Rui Qi via Openipmi-developer <openipmi-developer@lists.sourceforge.net>
Reply-To: Rui Qi <qirui.001@bytedance.com>
Cc: stable@vger.kernel.org, openipmi-developer@lists.sourceforge.net,
 linux-kernel@vger.kernel.org, Corey Minyard <minyard@acm.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-8.11 / 15.00];
	WHITELIST_DMARC(-7.00)[sourceforge.net:D:+];
	MV_CASE(0.50)[];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[216.105.38.7:from];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[3];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER(0.00)[openipmi-developer@lists.sourceforge.net,openipmi-developer-bounces@lists.sourceforge.net];
	DKIM_MIXED(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:corey@minyard.net,m:stable@vger.kernel.org,m:openipmi-developer@lists.sourceforge.net,m:linux-kernel@vger.kernel.org,m:minyard@acm.org,m:gregkh@linuxfoundation.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[openipmi-developer@lists.sourceforge.net];
	DMARC_POLICY_ALLOW(0.00)[lists.sourceforge.net,none];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,bytedance.com:-];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[minyard.net:email,bytedance.com:replyto,bytedance.com:email,bytedance.com:mid];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[openipmi-developer@lists.sourceforge.net,openipmi-developer-bounces@lists.sourceforge.net];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,bytedance.com:s=2212171451];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[openipmi-developer];
	RCPT_COUNT_FIVE(0.00)[6];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	HAS_REPLYTO(0.00)[qirui.001@bytedance.com]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 7EE8C65BDF2

On 6/8/26 10:58 PM, Corey Minyard wrote:
> On Mon, Jun 08, 2026 at 11:27:54AM +0800, Rui Qi wrote:
>> Hi Corey,
>>
>> I'm following up on this patch which was originally submitted on
>> March 25 and resubmitted as v2 on May 25. I haven't received any
>> feedback so far, so I wanted to bring it back to your attention.
>>
>> To recap, this is a one-line fix for handle_read_event_rsp() where
>> rcu_read_unlock() is incorrectly called instead of srcu_read_unlock()
>> on the error path, leaving the SRCU read-side lock held.
>>
>> This patch is specifically targeted at stable branches (v6.12 and
>> earlier) that still carry the original SRCU-based locking. In
>> mainline, commit 3be997d5a64a ("ipmi:msghandler: Remove srcu from
>> the ipmi user structure") has already restructured this function to
>> use a mutex, effectively eliminating the bug. However, that commit
>> is part of a larger SRCU removal series that is not suitable for
>> stable backport.
>>
>> Since the affected code no longer exists in mainline or your
>> for-next tree, this patch cannot follow the usual path of being
>> applied there first and then cherry-picked by stable. Could you
>> please review and provide an Acked-by so the stable team can pick
>> it up directly?
> 
> I can give an:
> 
> Acked-by: Corey Minyard <corey@minyard.net>
> 
> on this, as it is obviously correct.  However, it might be better to
> backport the changes removing SRCU.  Using SRCU here was a mistake to
> begin with.  But that might be too big a change.
> 
> -corey
> 

Hi Corey,

Thanks for the review and the Acked-by.

Regarding backporting the SRCU removal series: I agree that removing
SRCU entirely would be the cleaner long-term solution. However, as
you noted, that series involves significant refactoring across
multiple functions and would be a relatively large change for a
stable branch. The one-line fix is minimal and addresses the
immediate SRCU imbalance without risking regressions, which seems
more appropriate for a stable backport.

With your Acked-by, I'll ask the stable team to pick this up.

Thanks again,
Rui

>>
>> No changes since v2. The patch is reproduced below for convenience.
>>
>> From: Rui Qi <qirui.001@bytedance.com>
>> Subject: [PATCH v2] ipmi: Fix rcu_read_unlock to srcu_read_unlock in
>>  handle_read_event_rsp
>>
>> Fix a bug where rcu_read_unlock() was used instead of srcu_read_unlock()
>> in handle_read_event_rsp() when ipmi_alloc_recv_msg() fails.
>>
>> This mismatch leads to an SRCU read-side critical section imbalance: the
>> entry uses srcu_read_lock(&intf->users_srcu) but the error path
>> incorrectly calls rcu_read_unlock(), which is a no-op for SRCU and
>> leaves the SRCU lock held.
>>
>> The offending code was restructured in mainline by commit 3be997d5a64a
>> ("ipmi:msghandler: Remove srcu from the ipmi user structure"), which
>> replaced the SRCU locking with a mutex in this function, effectively
>> eliminating the mismatch. However, that commit is part of a larger
>> SRCU removal series that is not suitable for stable backport. This
>> minimal fix addresses the SRCU imbalance for 6.12 and earlier stable
>> branches that still carry the original locking scheme.
>>
>> Fixes: e86ee2d44b44 ("ipmi: Rework locking and shutdown for hot remove")
>> Cc: stable@vger.kernel.org
>> Signed-off-by: Rui Qi <qirui.001@bytedance.com>
>>
>>  drivers/char/ipmi/ipmi_msghandler.c | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/drivers/char/ipmi/ipmi_msghandler.c b/drivers/char/ipmi/ipmi_msghandler.c
>> index 188722ec0337..41ae4dac4eeb 100644
>> --- a/drivers/char/ipmi/ipmi_msghandler.c
>> +++ b/drivers/char/ipmi/ipmi_msghandler.c
>> @@ -4395,7 +4395,7 @@ static int handle_read_event_rsp(struct ipmi_smi *intf,
>>
>>  		recv_msg = ipmi_alloc_recv_msg(user);
>>  		if (IS_ERR(recv_msg)) {
>> -			rcu_read_unlock();
>> +			srcu_read_unlock(&intf->users_srcu, index);
>>  			list_for_each_entry_safe(recv_msg, recv_msg2, &msgs,
>>  						 link) {
>>  				list_del(&recv_msg->link);


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
