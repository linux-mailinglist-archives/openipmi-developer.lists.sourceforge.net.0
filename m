Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qIstIfkO4GmzcAAAu9opvQ
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	for <lists+openipmi-developer@lfdr.de>; Thu, 16 Apr 2026 00:19:37 +0200
X-Original-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CD3DA40888F
	for <lists+openipmi-developer@lfdr.de>; Thu, 16 Apr 2026 00:19:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:References:
	Message-ID:To:Date:Sender:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=nbSfpqZBezwHz9xxg5bC6eI0Xg2prfovcKAD5AcM0Io=; b=MQlIb7/Dhb5dS45DmEZADIGGOt
	sh4/v7HZUFIkoYSLsDENhab8fG8MK6Aear6YRme6Wkv29PyUKBQm7DQT45+hdzmA7onqaoKNZn5hG
	Ehpro02abcE6IiTAUHUMYuBHyFH1TE37+YZqzE3Z+Wp63bO1xi9tCI9blw1uqj6PXrlA=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1wD8a0-0000gW-DD;
	Wed, 15 Apr 2026 22:19:28 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <fred@cloudflare.com>) id 1wD8Zz-0000gP-5T
 for openipmi-developer@lists.sourceforge.net;
 Wed, 15 Apr 2026 22:19:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=b6qdTyIDQ2Crr+xkUcN8ian79ontqrxWP3mXCRL15bw=; b=a+fxB2N5GaOyC17gWjaqIgAGwa
 FjuHItDkvUr4Mf1n+FzuTcfRC0ZzgsgFwD7Hko87LOKnTC6oKlDCM4R8608/stsd1KHT0ZnZ6a65D
 O495EJMspsRwwn+NX3vkSZorm4X6RRJgT5ZW6i1ypq5SHJj+cfOYgP+eysOp/ZvUeTIM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=b6qdTyIDQ2Crr+xkUcN8ian79ontqrxWP3mXCRL15bw=; b=EA41lqQJ3dXwM/B8gXEUDnNfPj
 GIgkAfoS8/KHGby9qKC6a6Z5Hl0Z8F3oW7+zHCA5k1kpAQKDGiF16Z3Cnq8oxee7OWlJ4u4hk1bWO
 cNaheXqhFJPD7PBMpaUtbUOQ7+3vyCV9QYnOmQk5UZMRpUVXm+ThB+68vD+uvT4Di9gs=;
Received: from mail-oa1-f53.google.com ([209.85.160.53])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1wD8Zy-0007ts-LG for openipmi-developer@lists.sourceforge.net;
 Wed, 15 Apr 2026 22:19:27 +0000
Received: by mail-oa1-f53.google.com with SMTP id
 586e51a60fabf-40f1a1f77a6so5148583fac.2
 for <openipmi-developer@lists.sourceforge.net>;
 Wed, 15 Apr 2026 15:19:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cloudflare.com; s=google09082023; t=1776291556; x=1776896356;
 darn=lists.sourceforge.net; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=b6qdTyIDQ2Crr+xkUcN8ian79ontqrxWP3mXCRL15bw=;
 b=U3jSXyjHnqgNKIrT78OfjkZPw4v/j9jca3iTL5fl867blex5FRSuQTzfmlO3UjcIIp
 gghY3m/CMga8YpalLnPE+ZYhaXQ32V0ImrtLNlROkks6ObSYiSg6hj0YxLIPPWSl46gK
 DV7CbcZeGUYmmsCF3v+TO+uz0hqwyNKChQN3KbFYVNG/EPW7Ssftj3x0R7wpI8QoRHtZ
 PctiSv3MbejwBL5CBzWnwvEeQZGaF/GLKHm0O6i4eC4odCZKXWMtxUikbV3lCNRWKh6l
 MSe8henxg5JV86c4AmWioKN7f0EsaYMmN8JwsFnUvt2HVt5GEX+Cd9W+2NUh5ZiZyDhW
 JM/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1776291556; x=1776896356;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=b6qdTyIDQ2Crr+xkUcN8ian79ontqrxWP3mXCRL15bw=;
 b=ThvxpaYpH0RFGyJ8sllioYe0eUq6ng5s4cXNR0uHg3J654PhWyRsLojKrJVU0h00SC
 W6HThX3NwCVJhBvuah4vCXmk8lGVXQg8A24hYDhHu+e6y92d3OBxxI+ZfNG1Jonovs+R
 HlKaLZm/RhRnzkpfOAKiltKbTf7BVviQy/YqrOoDrDPstDQXQp+4nc1ejmiNO6NVqLtA
 mXNNxFwX5ifFQmDOMil/5ZkXFe9pKapSBYdVlUCaWKdUb9mCTNjNwG+yQT+TL/NzbiYJ
 9aDbEv3LG+slb2Bq6Q7iTJZJE1UrMKc2nsLt8jNkIuJtg1IyLeiuh06zeZzKUEIR9PVx
 K3fA==
X-Forwarded-Encrypted: i=1;
 AFNElJ9HjzpZiAfvVBZ17ecI1L5DCTUnEvc095Zx9siRSvpMdVIcjK6zkPb12rr0GA6BNRL4XyE7z+5WhRwZvepIkz5gfUc=@lists.sourceforge.net
X-Gm-Message-State: AOJu0YyzBtW5M0n2VMd3E+H2cpVdjpT+wj8VVGmFQtW1jzR4ehlLnqM3
 UayM/uiJumlWQ/8l1w6OogxdZdnvL/4GVC26w1/i6/TfREPHA02yzsYYi2Cqjn7mUdQjiif59Xx
 fzg11ij0=
X-Gm-Gg: AeBDieuMO7fb2xy2T02mMpbTmXsYG/mk9AEQPv9YNGx+HiesdCR7YNDTZcat9BPFvoI
 L8/b0eHCGZNZgenboC1v4uB2049RuVJyThBf76LXMxrTHz+EMVdXceR+OSICwHAfyFojbRv1Lxo
 3nljXxg46oxoUpMEbxk6ixdyTKsu7E46KvQj4pybbWuzjwHU6P5QH3W+gH9YSOTGnlrVNQdpCIa
 TwN+2oCf0fHM/YEQ9x/+8GhUU/lOJ2JJ1Ag4Skqq/m4QssAnknNZglGPPtfnZsrE8QGSjcaBfBR
 f3Y8qew5VoDufk47rFW0+aXcdcDDATXAEzi4T0ZJW6uuEaHXbS6N3lozSLky8x0DS8XXkvOnWt3
 RYVX0tMb9+b+QSEIZEqx+pLb1dWqm5YAQnhtPqxgiR9NqGk9EXfUKd8wydFfUxUvF9tdW2s/QPk
 P27lLlBCjRykAMAu1BCi/OpdLuHQjvhAvA/6Zyp5OPBnfjjuqX6HWt0ZrB0D/HhMfTHH1AhcqRr
 x1T
X-Received: by 2002:ad4:5bcf:0:b0:8ac:abc5:8754 with SMTP id
 6a1803df08f44-8acabc58a7dmr240670846d6.30.1776288168512; 
 Wed, 15 Apr 2026 14:22:48 -0700 (PDT)
Received: from CMGLRV3 (dhcp-74-167-106-30.gobrightspeed.net. [74.167.106.30])
 by smtp.gmail.com with ESMTPSA id
 6a1803df08f44-8ae6c93830esm26519286d6.9.2026.04.15.14.22.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 15 Apr 2026 14:22:48 -0700 (PDT)
Date: Wed, 15 Apr 2026 16:22:45 -0500
To: Tony Camuso <tcamuso@redhat.com>
Message-ID: <aeABpewNzo4MURpO@CMGLRV3>
References: <20260415115930.3428942-1-matt@readmodwrite.com>
 <ad-BtS5b3qiowqb7@mail.minyard.net>
 <9b6af9ab-79f9-4f87-ab7c-8ad6efeb18ed@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <9b6af9ab-79f9-4f87-ab7c-8ad6efeb18ed@redhat.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Corey & Tony, On Wed, Apr 15, 2026 at 11:46:27AM -0400,
 'Tony Camuso' via kernel-team wrote: > On Wed, Apr 15, 2026 at 12:59:30PM
 +0100, Matt Fleming wrote: > > From: Matt Fleming <mfl...@cl...> > > > >
 When the BM [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.53 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium trust sender
X-Headers-End: 1wD8Zy-0007ts-LG
Subject: Re: [Openipmi-developer] [PATCH] ipmi: Add timeout to unconditional
 wait in __get_device_id()
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
From: Frederick Lawler via Openipmi-developer
 <openipmi-developer@lists.sourceforge.net>
Reply-To: Frederick Lawler <fred@cloudflare.com>
Cc: Matt Fleming <mfleming@cloudflare.com>, kernel-team@cloudflare.com,
 Matt Fleming <matt@readmodwrite.com>, linux-kernel@vger.kernel.org,
 corey@minyard.net, openipmi-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net
X-Spamd-Result: default: False [-8.11 / 15.00];
	WHITELIST_DMARC(-7.00)[sourceforge.net:D:+];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	MID_RHS_NOT_FQDN(0.50)[];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[216.105.38.7:from];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_MIXED(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DMARC_POLICY_ALLOW(0.00)[lists.sourceforge.net,none];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER(0.00)[openipmi-developer@lists.sourceforge.net,openipmi-developer-bounces@lists.sourceforge.net];
	FORWARDED(0.00)[openipmi-developer@lists.sourceforge.net];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,cloudflare.com:s=google09082023];
	FORGED_RECIPIENTS(0.00)[m:tcamuso@redhat.com,m:mfleming@cloudflare.com,m:kernel-team@cloudflare.com,m:matt@readmodwrite.com,m:linux-kernel@vger.kernel.org,m:corey@minyard.net,m:openipmi-developer@lists.sourceforge.net,s:lists@lfdr.de];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,cloudflare.com:-];
	RCVD_COUNT_FIVE(0.00)[5];
	PREVIOUSLY_DELIVERED(0.00)[openipmi-developer@lists.sourceforge.net];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[openipmi-developer@lists.sourceforge.net,openipmi-developer-bounces@lists.sourceforge.net];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TAGGED_RCPT(0.00)[openipmi-developer];
	HAS_REPLYTO(0.00)[fred@cloudflare.com];
	RCPT_COUNT_SEVEN(0.00)[7];
	MISSING_XM_UA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.sourceforge.net:dkim,lists.sourceforge.net:helo,lists.sourceforge.net:rdns,cloudflare.com:replyto]
X-Rspamd-Queue-Id: CD3DA40888F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Corey & Tony,

On Wed, Apr 15, 2026 at 11:46:27AM -0400, 'Tony Camuso' via kernel-team wrote:
> On Wed, Apr 15, 2026 at 12:59:30PM +0100, Matt Fleming wrote:
> > From: Matt Fleming <mfl...@cl...>
> > 
> > When the BMC does not respond to a "Get Device ID" command, the
> > wait_event() in __get_device_id() blocks forever in
> > TASK_UNINTERRUPTIBLE while holding bmc->dyn_mutex. Every subsequent
> > sysfs reader then piles up in D state. Replace with
> > wait_event_timeout() to return -EIO after 1 second.
> 
> On Wed, Apr 15, 2026 at 12:17:04PM, Corey Minyard wrote:
> > This is the second report I have of something like this.  So
> > something is up.  I'm adding Tony, who reported something like this
> > dealing with the watchdog.
> > 
> > The lower level driver should never not return an answer, it is
> > supposed to guarantee that it returns an error if the BMC doesn't
> > respond. So the bug is not here, the bug is elsewhere.

This is a bit of a throwback to our previous discussions around [1].

I did end up applying [2] based on that discussion, and had limited
success, but we still have external resets that cause us to enter
this undesirable state :(

[1]: https://lore.kernel.org/all/aJUMlAG17c6lCgFq@mail.minyard.net/
[2]: https://lore.kernel.org/all/20250807230648.1112569-2-corey@minyard.net/
> 
> I've been tracking a related issue (RHEL customer case) where BMC
> reset while the IPMI watchdog is active causes D-state hangs. This
> appears to be the same root cause Matt is hitting.
> 
> I backported the recent upstream KCS/SI fixes to a RHEL 9 test kernel
> (54 patches bringing it to mainline parity) and tested today on a
> Dell R640.

I assume this patch series: "ipmi:watchdog: Fix panic, D-state hang, and
lost protection on BMC reset" [3]?

[3]: https://lore.kernel.org/all/20260407175134.3367345-1-tcamuso@redhat.com/


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
