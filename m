Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gOi5FDzy4GkZnwAAu9opvQ
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	for <lists+openipmi-developer@lfdr.de>; Thu, 16 Apr 2026 16:29:16 +0200
X-Original-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8072540F913
	for <lists+openipmi-developer@lfdr.de>; Thu, 16 Apr 2026 16:29:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Type:Content-Transfer-Encoding:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:References:To:MIME-Version:Date:
	Message-ID:Sender:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=0IBAEEcoT0/yxBH2tPb6IBPe5dbi7a8WYsSIs6VIs14=; b=OoPwaf/VJsKbexwuPm1de5V5oK
	19FXzICRX1pYKJFCqq6htCxmyNaNRu8NM/b/u8hAWRRxHYTYktzejhmd0f58wbC0eOucoL+8PRo4w
	8ZrjAxS5C1hAZkoJi/z02OTlsZ51+uNs47ayG6c/FWMrUC3isLfsQcQ+N2kUBFwJlqpw=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1wDNiL-0005nP-Uh;
	Thu, 16 Apr 2026 14:29:05 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <tcamuso@redhat.com>) id 1wDNiL-0005nJ-2W
 for openipmi-developer@lists.sourceforge.net;
 Thu, 16 Apr 2026 14:29:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Cc:To:Subject:From:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=W9b12nOaJ9TBf2ueYV1MoRtkDYuJ5D/urTMtLbAxPk4=; b=P65GYwELtLcE+wpECqHLgUp5EL
 HgPGy6o0ZN5JlYpjcIOwtritloGcBasLVan3U6wjbioT6hLoCVR/a4S6CpnDZar2+4Vo4tdrzaEKY
 JCeYREE557LYjyrdMz3JFIm26wDlJDpVHDu/itlMEHm5kUVDOrw39XJcrRfgqqAMOT1E=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:References:Cc:To:
 Subject:From:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=W9b12nOaJ9TBf2ueYV1MoRtkDYuJ5D/urTMtLbAxPk4=; b=bvzKB1CngyHMNDt1uys4/AY8bx
 DQNaNOhMkGnvzZAPTpcu5lEJ5elWip1y8dpVTKnpGstVeGICZsX8J6fMglFpTAFqCI7XhAgtTWZRH
 ca9/TLdKH3oCtY/IrdgAanE46GM55g8bI97bJVdir+jRqFU+6/2FV3BXulCxQorOYF3M=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1wDNiK-0002sf-Gx for openipmi-developer@lists.sourceforge.net;
 Thu, 16 Apr 2026 14:29:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1776349737;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=W9b12nOaJ9TBf2ueYV1MoRtkDYuJ5D/urTMtLbAxPk4=;
 b=NySX+J5XSkfnqAteWkQN5KNZjaKErhIkN4tWpC4uSsBmDTOHBnjJ281300Jq+6d8AeolEU
 dy7eAAS3+4siqGVy4mxFQMRLynN5TUrVmijyuGXB8NEP8uRyid+yEr66iiODHds2Qk7anJ
 62XRwY6XBbiFewAFAB4boUszyuw1XEg=
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com
 [209.85.222.200]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-647-eS3Uzs6AMtC23OexGJmGLw-1; Thu, 16 Apr 2026 10:28:55 -0400
X-MC-Unique: eS3Uzs6AMtC23OexGJmGLw-1
X-Mimecast-MFC-AGG-ID: eS3Uzs6AMtC23OexGJmGLw_1776349735
Received: by mail-qk1-f200.google.com with SMTP id
 af79cd13be357-8d5010ea730so161098185a.0
 for <openipmi-developer@lists.sourceforge.net>;
 Thu, 16 Apr 2026 07:28:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1776349735; x=1776954535;
 h=content-transfer-encoding:in-reply-to:content-language:references
 :cc:to:subject:from:user-agent:mime-version:date:message-id:x-gm-gg
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=W9b12nOaJ9TBf2ueYV1MoRtkDYuJ5D/urTMtLbAxPk4=;
 b=VcoAqQ2mpaZuRXx1Jgrf2WTWDZ66ZMlw8wK4q5QoaK9TiodX4kxaB71+fRbA6ltedu
 4PQFKbQbH8jbIIyEE22ytD6idavuSu0yF205iHp5DYl6oS+pAnx24mOEW10H0qa7sH5w
 uVdICSyY9zvLUvBmQ7t3vWa/6ZPyERm+bV3/lnGcyQ2iF0cKIWIS4edCIRWPzBldrHOb
 vcrahJx+LEpsMlOHtFFIpuOFavWzbLy22DfRVJ8NNbwzggyUNTiTp8vUpH4NbUhg+MPJ
 PCfoPu741IizWkolEaJZEC3GDg2uTlz/XckFOPJEXicAC1wKxlnqdHH7JyeXa6swJotS
 rhFw==
X-Forwarded-Encrypted: i=1;
 AFNElJ/i3WCgqLWgKxzkKeO3wspvoF9/mjuJQ3LxkI0k4erGlkWLvA1tTxvFfOuIyqyPnEjNjr2BIaj9mR72aEpXvbBsxkk=@lists.sourceforge.net
X-Gm-Message-State: AOJu0Yzm/LSkcnmP16Z/byNlj4oB4spw1HXbNnhHNj2aVASfqxtzlGZ6
 JQiLUDnkyhqERfFgnPnhyG8coHXsYGy20ud+dypopLE/tzehMR5RtFDpjICcQhwWcB0MucQxLBn
 ARhkUVx9TOEEr0ewONysrPfYLJkJDZAMe7dd294lTh9Ktk/2ED8OErgUbT/+iCdndd4ZxfMGqbm
 8wNq1KNA==
X-Gm-Gg: AeBDiesjxerN7hh9zuL1xpSoaCOdD1qYRhKS4EUoCGR9Tvlq/Um+/fPtUw6HHPVNHY9
 uAUsmHBVBNTflzbxi6WFlStUBDF0ZBTJISHBmzCAVmwstodFvDYQluwPe+gxaiXAIWuky8DhnMH
 3ecfj3acisUQEbS+D6cNBcJe2IRp+1RaWiHdN9jrz2vIWjEwcx6MSDH/Td6gotKOFQKsamfOqAx
 Mu2X78Spv6OQ7rX78Uw+G8WE2jFo6sspoXSgJLDGTkxVs/+SRJ7ow+29qd6IKg4jTC1B3qoWM6h
 KsET2isqQWPh+KQ2fbLbUrGYHPYc9uP+f9uAew/pOSq3CYZvkcjDy4S9caLNIxA7/G/9ymfwc/M
 tuZLnrVBX02dqcctAp/9mdWIGPva5rqExSd/4
X-Received: by 2002:a05:620a:1992:b0:8d6:6db0:88de with SMTP id
 af79cd13be357-8e5df03717emr534677085a.44.1776349734739; 
 Thu, 16 Apr 2026 07:28:54 -0700 (PDT)
X-Received: by 2002:a05:620a:1992:b0:8d6:6db0:88de with SMTP id
 af79cd13be357-8e5df03717emr534672085a.44.1776349734191; 
 Thu, 16 Apr 2026 07:28:54 -0700 (PDT)
Received: from [192.168.3.252] ([74.75.144.57])
 by smtp.gmail.com with ESMTPSA id
 af79cd13be357-8e4f31f95f9sm445248185a.43.2026.04.16.07.28.52
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 16 Apr 2026 07:28:53 -0700 (PDT)
Message-ID: <cb6c3b2d-8c22-4f62-9157-a5918c1e1ea0@redhat.com>
Date: Thu, 16 Apr 2026 10:28:50 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Frederick Lawler <fred@cloudflare.com>
References: <20260415115930.3428942-1-matt@readmodwrite.com>
 <ad-BtS5b3qiowqb7@mail.minyard.net>
 <9b6af9ab-79f9-4f87-ab7c-8ad6efeb18ed@redhat.com> <aeABpewNzo4MURpO@CMGLRV3>
In-Reply-To: <aeABpewNzo4MURpO@CMGLRV3>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: wuCNEAk5FDkBkUUs1fmzHiaRzWJ-eF8tMUlobX40fD4_1776349735
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Spam-Score: -0.7 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 4/15/26 5:22 PM, Frederick Lawler wrote: > Hi Corey &
 Tony, > > On Wed, Apr 15, 2026 at 11:46:27AM -0400,
 'Tony Camuso' via kernel-team
 wrote: >> On Wed, Apr 15, 2026 at 12:59:30PM +0100, Matt Fle [...] 
 Content analysis details:   (-0.7 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [170.10.129.124 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.5 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1wDNiK-0002sf-Gx
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
From: Tony Camuso via Openipmi-developer
 <openipmi-developer@lists.sourceforge.net>
Reply-To: Tony Camuso <tcamuso@redhat.com>
Cc: Matt Fleming <mfleming@cloudflare.com>, kernel-team@cloudflare.com,
 Matt Fleming <matt@readmodwrite.com>, linux-kernel@vger.kernel.org,
 corey@minyard.net, openipmi-developer@lists.sourceforge.net
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: openipmi-developer-bounces@lists.sourceforge.net
X-Spamd-Result: default: False [-8.61 / 15.00];
	WHITELIST_DMARC(-7.00)[sourceforge.net:D:+];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[216.105.38.7:from];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_POLICY_ALLOW(0.00)[lists.sourceforge.net,none];
	DKIM_MIXED(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:fred@cloudflare.com,m:mfleming@cloudflare.com,m:kernel-team@cloudflare.com,m:matt@readmodwrite.com,m:linux-kernel@vger.kernel.org,m:corey@minyard.net,m:openipmi-developer@lists.sourceforge.net,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[openipmi-developer@lists.sourceforge.net,openipmi-developer-bounces@lists.sourceforge.net];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,redhat.com:s=mimecast20190719];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[openipmi-developer@lists.sourceforge.net];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,redhat.com:-];
	RCVD_COUNT_FIVE(0.00)[6];
	PREVIOUSLY_DELIVERED(0.00)[openipmi-developer@lists.sourceforge.net];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[openipmi-developer@lists.sourceforge.net,openipmi-developer-bounces@lists.sourceforge.net];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[7];
	HAS_REPLYTO(0.00)[tcamuso@redhat.com];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	TAGGED_RCPT(0.00)[openipmi-developer];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[minyard.net:email]
X-Rspamd-Queue-Id: 8072540F913
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


On 4/15/26 5:22 PM, Frederick Lawler wrote:
> Hi Corey & Tony,
> 
> On Wed, Apr 15, 2026 at 11:46:27AM -0400, 'Tony Camuso' via kernel-team wrote:
>> On Wed, Apr 15, 2026 at 12:59:30PM +0100, Matt Fleming wrote:
>>> From: Matt Fleming <mfl...@cl...>
>>>
>>> When the BMC does not respond to a "Get Device ID" command, the
>>> wait_event() in __get_device_id() blocks forever in
>>> TASK_UNINTERRUPTIBLE while holding bmc->dyn_mutex. Every subsequent
>>> sysfs reader then piles up in D state. Replace with
>>> wait_event_timeout() to return -EIO after 1 second.
>>
>> On Wed, Apr 15, 2026 at 12:17:04PM, Corey Minyard wrote:
>>> This is the second report I have of something like this.  So
>>> something is up.  I'm adding Tony, who reported something like this
>>> dealing with the watchdog.
>>>
>>> The lower level driver should never not return an answer, it is
>>> supposed to guarantee that it returns an error if the BMC doesn't
>>> respond. So the bug is not here, the bug is elsewhere.
> 
> This is a bit of a throwback to our previous discussions around [1].
> 
> I did end up applying [2] based on that discussion, and had limited
> success, but we still have external resets that cause us to enter
> this undesirable state :(

In my testing with updates from the Linus tree, after a BMC cold reset:
   1. The KCS driver returned -EBUSY to callers (good)
   2. The watchdog daemon received the error and initiated shutdown
   3. No D-state hang

My tests, conducted on a Dell PER640, verified that Corey's upstream fixes
cause the driver to properly return errors instead of blocking.
At least on that platform.

Which hich low-level driver are you using (KCS, BT, SSIF)?
The PER640 uses KCS.
# cat /sys/class/ipmi/ipmi0/device/params 2>/dev/null
kcs,i/o,0xca8,rsp=4,rsi=1,rsh=0,irq=10,ipmb=32

> [1]: https://lore.kernel.org/all/aJUMlAG17c6lCgFq@mail.minyard.net/
> [2]: https://lore.kernel.org/all/20250807230648.1112569-2-corey@minyard.net/
>>
>> I've been tracking a related issue (RHEL customer case) where BMC
>> reset while the IPMI watchdog is active causes D-state hangs. This
>> appears to be the same root cause Matt is hitting.
>>
>> I backported the recent upstream KCS/SI fixes to a RHEL 9 test kernel
>> (54 patches bringing it to mainline parity) and tested today on a
>> Dell R640.
> 
> I assume this patch series: "ipmi:watchdog: Fix panic, D-state hang, and
> lost protection on BMC reset" [3]?
> 
> [3]: https://lore.kernel.org/all/20260407175134.3367345-1-tcamuso@redhat.com/
> 

Actually, no. The 54 commits I backported simply bring my RHEL-9 test kernel
to parity with the Linus tree, which includes [2] and ...
cae66f1a1dcd 2026-02-13 corey@minyard.net ipmi:si: Fix check for a misbehaving BMC



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
