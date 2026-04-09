Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mA9VNbq412l0SAgAu9opvQ
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	for <lists+openipmi-developer@lfdr.de>; Thu, 09 Apr 2026 16:33:30 +0200
X-Original-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 226D73CC117
	for <lists+openipmi-developer@lfdr.de>; Thu, 09 Apr 2026 16:33:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Type:Content-Transfer-Encoding:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:References:To:MIME-Version:Date:
	Message-ID:Sender:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=399AIRS/ekmo6jSqVf9i8Fx0/X8TSWf0Zj3BjZa15z4=; b=hzWiLZMVO1GTK6OJgD9v06ZCwG
	IzwJ0fef/Bo0G6wruFuUOrFz+sya0ubV52G5Yroo28RY489stVXLiextHVz90vE4rG5/vN/fwrf0S
	mHDEdMXMQwVkmYpx4uR+4HcESEDz8EZuTTsXoaBg1dYa1sGbOBdTT41VHM3rRwtFZIrs=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1wAqRc-0002VH-Hy;
	Thu, 09 Apr 2026 14:33:20 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <tcamuso@redhat.com>) id 1wAqRc-0002V9-1q
 for openipmi-developer@lists.sourceforge.net;
 Thu, 09 Apr 2026 14:33:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=hobH8xIAdm6sShBt8ymeYZ5V7PM2aejeN8dxMghifZ8=; b=nLzUebXJ9waoH38+OzOpyVuDEi
 RJref4K7uBkTKerGD9wP+bpietc06VD3/TA2khQmQxJgxVUW72jwDa4VkpHzZy6Rrddu0nCkE3hK+
 hbWq0nN0YScWNgl6BPyRw/jwxi9TsN8qyz/vvEXb/YT6XQrDhULfqd/17ublwgxo4tQo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=hobH8xIAdm6sShBt8ymeYZ5V7PM2aejeN8dxMghifZ8=; b=IBSnNxpdZ2cG2t+acn6ZihqT4p
 Z1JLEaS7GYQrcVOBrpPeqLeWsO5czDMf1Z7JPGSE2gBPilaAsQHHP6xycHtwd66Jkh4ILzvnRF+JT
 kY0RQERipOfnkKBwq7OrYNHHx7NlKbl9aEaH/Dhu8KWvBjmC2rRWVfZITEQIC1Okzh78=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1wAqRb-00085i-6C for openipmi-developer@lists.sourceforge.net;
 Thu, 09 Apr 2026 14:33:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1775745188;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=hobH8xIAdm6sShBt8ymeYZ5V7PM2aejeN8dxMghifZ8=;
 b=Krn2WFXtg+8Crzz6DC7c3yqscpP3/oig+ucZ1JOdwQzOh0U+d9FewOAKYO47zznWHI+f2G
 Cup713Fv8AEXSRTndrVifcsGjuXqbvptNwgEdPaGwdaTnfBIoi2JgrTr/SBIPnfLX6ruEV
 PywGo0OrilY/i4Nj1hfKJHf42UjPM/4=
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com
 [209.85.160.198]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-375-QlSVEcRhPcmWVVqPg_U4Lw-1; Thu, 09 Apr 2026 10:33:05 -0400
X-MC-Unique: QlSVEcRhPcmWVVqPg_U4Lw-1
X-Mimecast-MFC-AGG-ID: QlSVEcRhPcmWVVqPg_U4Lw_1775745185
Received: by mail-qt1-f198.google.com with SMTP id
 d75a77b69052e-50b6f869676so22217701cf.2
 for <openipmi-developer@lists.sourceforge.net>;
 Thu, 09 Apr 2026 07:33:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1775745185; x=1776349985;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=hobH8xIAdm6sShBt8ymeYZ5V7PM2aejeN8dxMghifZ8=;
 b=CuRgcstC+ts3uZyVePQv7bu2IpWMiVZTTPuEFJTxfHNqw9ZI8OViKDIU5cBwPxVFhz
 dr4roF9KFRzlrUSaSbn6pPSE5MRFM9LkMrI/nK+p1pxNO5QGqtxLUOJFEtU8ny30Jt9v
 NRtBmze0Ymre7stmknuJuD8DPKFYfwKuIDIJar85DHJ/weu3ArCOf93WvotF4POZLxua
 2YJwri5kOVbU+hkpLMbynW5kBsYbaVe+yirQ+0GmPJ/gXkcOOcoMg9bfnTNgePRGup8b
 q2sOjN/kvB7kqUCRJLNLb4POgXNwuUORRxvE5WncCJHqhO+QW3mKkn5ZgoLnj8TVu0ow
 ac8A==
X-Gm-Message-State: AOJu0YyUk8wGVCs1Gz5nuJpIOdAGbN45VSYOnfG9u8ft0ule8sLIOOy2
 dpX3fqljf1vTWOcUAxxD7dCuE1iAfYjudmJz6y3jwyDqv/EiDvCBeh+25nJBDP2JuteK8TK6Ivz
 XFbhmT3VbrP08IZ30OjzdTQwO2iWYX4vRih2Qr+TIOEogZndTvdQDNulyWhgs3o4qWDzKz6oIFW
 JOWEfElg==
X-Gm-Gg: AeBDiesGh69Wy2oKr1yHcrNRPVLsE3HXz+QiRmiuwvHkrtfWzEwN2yBsYAuDCESddbS
 O8RmEWd2ex0FRhLqxnJ7CwtV/3MHPGDVM+Xqqb4a7AouxxwgcW9Qup86wwikt9lwfcM8hnYme/p
 25o/xI7sM0lwMXX7Yn5KVeVBdmCr/ld4zs32elT0LEgEFhRjVvGuHhIxhKzo0rc77fDOMgfPi9J
 Pe3r16pfjA94fxhE6ichlnjic3zmXC/JZn7dDi47kNSP3LP2xIooQIhRU+RReKcf6Ema2cSsOX7
 XG4tMzTPTDu78Lt0JmYoD1ybjDMutZFNT7QgOetknouFG12iJz6+/MyGN5gzRQ7rfDWK+o6DUqo
 NsM6aWJhcfBXrxqUxAzEEcRGbsQsO44lu5IlL
X-Received: by 2002:ac8:7d8a:0:b0:50d:7f91:6bd8 with SMTP id
 d75a77b69052e-50d7f91764dmr295543511cf.28.1775745184941; 
 Thu, 09 Apr 2026 07:33:04 -0700 (PDT)
X-Received: by 2002:ac8:7d8a:0:b0:50d:7f91:6bd8 with SMTP id
 d75a77b69052e-50d7f91764dmr295542581cf.28.1775745183984; 
 Thu, 09 Apr 2026 07:33:03 -0700 (PDT)
Received: from [192.168.3.252] ([74.75.144.57])
 by smtp.gmail.com with ESMTPSA id
 d75a77b69052e-50d4aed181asm211837171cf.0.2026.04.09.07.33.03
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 09 Apr 2026 07:33:03 -0700 (PDT)
Message-ID: <b0486d37-edab-41f8-8392-4a16a8493de1@redhat.com>
Date: Thu, 9 Apr 2026 10:33:02 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: corey@minyard.net
References: <20260407175134.3367345-1-tcamuso@redhat.com>
 <adV9JLnpTfDpEtAu@mail.minyard.net>
In-Reply-To: <adV9JLnpTfDpEtAu@mail.minyard.net>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: yK-2_MhyI0z4-zDq-TPdzuIJhAs5n_kL7FXOqND_kS0_1775745185
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Spam-Score: -0.7 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 4/7/2026 5:54 PM, Corey Minyard wrote: > On Tue, Apr 07, 
 2026 at 01:51:32PM -0400, Tony Camuso wrote: >> When the BMC resets while
 the IPMI watchdog is active, the driver has >> three failure modes [...] 
 Content analysis details:   (-0.7 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [170.10.129.124 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.5 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1wAqRb-00085i-6C
Subject: Re: [Openipmi-developer] [PATCH 0/2] ipmi:watchdog: Fix panic,
 D-state hang, and lost protection on BMC reset
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
Cc: openipmi-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 minyard@acm.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: openipmi-developer-bounces@lists.sourceforge.net
X-Spamd-Result: default: False [-8.61 / 15.00];
	WHITELIST_DMARC(-7.00)[sourceforge.net:D:+];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[216.105.38.7:from];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:corey@minyard.net,m:openipmi-developer@lists.sourceforge.net,m:linux-kernel@vger.kernel.org,m:minyard@acm.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DMARC_POLICY_ALLOW(0.00)[lists.sourceforge.net,none];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[openipmi-developer@lists.sourceforge.net];
	DKIM_MIXED(0.00)[];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[openipmi-developer@lists.sourceforge.net,openipmi-developer-bounces@lists.sourceforge.net];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,redhat.com:s=mimecast20190719];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,redhat.com:-];
	RCVD_COUNT_FIVE(0.00)[6];
	TO_DN_NONE(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[openipmi-developer@lists.sourceforge.net,openipmi-developer-bounces@lists.sourceforge.net];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[openipmi-developer@lists.sourceforge.net];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	HAS_REPLYTO(0.00)[tcamuso@redhat.com];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	TAGGED_RCPT(0.00)[openipmi-developer];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.sourceforge.net:helo,lists.sourceforge.net:rdns,lists.sourceforge.net:dkim]
X-Rspamd-Queue-Id: 226D73CC117
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 4/7/2026 5:54 PM, Corey Minyard wrote:
> On Tue, Apr 07, 2026 at 01:51:32PM -0400, Tony Camuso wrote:
>> When the BMC resets while the IPMI watchdog is active, the driver has
>> three failure modes depending on timing:
>>
>>   1. list_add double add panic -- the watchdog daemon retries while the
>>      static smi_msg/recv_msg structures are still queued in the IPMI
>>      layer from the previous (unanswered) request.
> 
> I'm trying to make sense of this.  Are you sure this didn't start
> happening after you added a timeout on the wait_for_completion()?
> Otherwise it would never return, the mutex would be held, and no new
> message could be added.
> 
> Just timing out in wait_for_completion() there could cause all kinds of
> bad things to happen.
> 

You're right. This work was done on a RHEL 9 kernel that did not yet have
your recent upstream KCS/SI fixes applied, so some of the behavior I
observed may have been caused/influenced by bugs you've more recently
addressed.

>>
>>   2. D-state hang -- wait_for_completion() blocks indefinitely because
>>      the BMC never delivers a response.
> 
> This is an issue.  The lower level driver is *always* supposed to return
> a failure.  Something else needs to be fixed.
> 
> I have seen several creative ways in which BMCs "fail to respond" that
> have confused the lower level drivers.  If my guess is correct, there's
> a bug in the low level driver that's causing it to not time out the
> message.
> 
> If we don't fix this, it will cause other issues outside the watchdog.
> 

Agreed -- the D-state hang is a symptom, not the root cause. If the
KCS driver correctly transitions through error recovery to
SI_SM_HOSED, and the SI layer returns an error completion to the
caller, then wait_for_completion() should never block indefinitely.

To get to the bottom of this, I've instrumented three layers:

   - ipmi_kcs_sm.c: trace entry into start_error_recovery() and the
     transition to KCS_HOSED after MAX_ERROR_RETRIES
   - ipmi_si_intf.c: trace return_hosed_msg(), the SI_SM_HOSED
     handler in smi_event_handler(), and HOSED recovery in
     smi_timeout()
   - ipmi_watchdog.c: trace message send/completion in
     _ipmi_set_timeout() and __ipmi_heartbeat(), and the completion
     code received in ipmi_wdog_msg_handler()

I've applied your recent upstream patches to my test kernel, so the
KCS/SI code is congruent with current mainline. The traces will show
whether the error recovery chain works correctly with your fixes in
place, or whether the BMC is doing something that still confuses the
low-level driver.

I'll collect the data and follow up.

>>
>>   3. Silent loss of watchdog protection -- the BMC returns a non-zero
>>      completion code, the driver's internal state becomes inconsistent,
>>      writes to /dev/watchdog return -EINVAL, and the daemon gives up.
>>      The system continues running without hardware watchdog coverage.
> 
> Again, are you sure this didn't start happening after you added the
> timeout?
> 

I think this one is pre-existing, independent of any timeout
changes. When the BMC comes back after a reset and returns a
non-zero completion code (e.g. 0xD5 or 0xFF), the watchdog handler
treats this as a permanent failure. The userspace daemon sees
-EINVAL on subsequent writes to /dev/watchdog and stops retrying.
The system continues running without hardware watchdog coverage,
with no indication to the administrator.

But I need to confirm this with the instrumented traces on the
the patched kernel.

I should have traces collected within the next week or so.

Tony

>>
>> All three stem from the same root cause: the static message structures
>> and unbounded completion waits were never designed for a BMC that
>> disappears mid-transaction.
> 
> All that is supposed to be protected by a mutex.  That mutex is claimed
> on all IPMI watchdog operations, and it shouldn't be released until all
> resources have been freed.  Anything that violates that is asking for
> trouble.
> 
> You don't mention the lower level interface (KCS, BT, SMIC, SSIF) but I
> think we need to start looking there.
> 
> It may be that the timeouts on the watchdog messages need to be
> adjusted.  The whole IPMI driver was designed on the presumption that
> the BMC would go away for only a short period of time (5-10 seconds) and
> not permanantly.  That has slowly been fixed over time, but things might
> need to be adjusted in the watchdog.
> 
> -corey
> 
>>>> This has been independently reported by Kenta Akagi on a Dell PowerEdge
>> R640 running 6.18.7, also triggered by a BMC reset with the watchdog
>> active:
>>
>>    https://sourceforge.net/p/openipmi/mailman/message/59292850/
>>
>> The fix takes a simple, deterministic approach: detect the failure via
>> BMC error response, guard against structure reuse (msg_in_flight) and
>> indefinite waits (completion timeout), then initiate orderly_reboot()
>> when the watchdog is active.  This produces the same outcome the
>> hardware watchdog would have -- a system reset -- but through a
>> controlled path with clear logging and no panics or hangs.
>>
>> If the watchdog is stopped when the BMC resets, no reboot occurs and
>> the system continues normally.
>>
>> Tested on Dell PowerEdge R640 with kernel 5.14 (RHEL 9) and verified
>> against mainline (both patches apply cleanly).
>>
>> Corey Minyard's recent fix for list corruption in smi_work()
>> (ipmi_msghandler.c) addresses a related but separate code path.  The
>> watchdog driver's own static structure reuse requires this fix.
>>
>> Tony Camuso (2):
>>    ipmi:watchdog: Reboot cleanly on BMC reset
>>    Documentation: ipmi: Update BMC reset behavior for watchdog
>>
>>   Documentation/driver-api/ipmi.rst |  61 ++++++++++++++++++
>>   drivers/char/ipmi/ipmi_watchdog.c | 101 ++++++++++++++++++++++++------
>>   2 files changed, 144 insertions(+), 18 deletions(-)
>>
>> -- 
>> 2.53.0
>>
> 



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
