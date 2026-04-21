Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uHtMDAi652mu/wEAu9opvQ
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	for <lists+openipmi-developer@lfdr.de>; Tue, 21 Apr 2026 19:55:20 +0200
X-Original-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 71BD643E378
	for <lists+openipmi-developer@lfdr.de>; Tue, 21 Apr 2026 19:55:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:To:From:Sender:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=jp1KYs3lttSmd0P4VUOwzarg/5hGSsL8L79FYCuVH4M=; b=cL7XgkGKv2nlBvrI5brXWQjF2J
	XpvubVGqkNlZeyWiOmO2SNnHDku41bmU1LZ86hKCuxn609zwf4UUDtJuzog+p8N7qKTe4z/7n2OTI
	STC7ECUEVVHqPOu34tsQOJxDVVkCzE9tevnu0R++qSLkOz1MRIAbOb35lSFXFZV+IBWU=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1wFFJS-0007SE-9V;
	Tue, 21 Apr 2026 17:55:06 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <corey@minyard.net>) id 1wFFJP-0007S5-6u
 for openipmi-developer@lists.sourceforge.net;
 Tue, 21 Apr 2026 17:55:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=mSwCSc5fH6IwvCnImMYsVU3mZaN0tZTlBhr1KdpVNwA=; b=O8T4U9lHXJDCgez957Ql4ppUr5
 gidljwqiYRsZLBmWLRYp3AvuWbb4HC+sX9nQArJ15vfZsWFo59DT0bXD4+m5Q3eyhtNoIG+jjJ566
 ePzjpQjTvTu4auf32wj6YWB4CdzHTS2MZRuDl6urvLmnOAZqwyFo8vuqBxT9sUnqpBOk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=mSwCSc5fH6IwvCnImMYsVU3mZaN0tZTlBhr1KdpVNwA=; b=A
 xFgqJ1Tae/ov/nU+LG9VhYkZ4+MtkS5ubNI+PKh3AyNi3g/c9/80kRoeCjyqCwC7+c6E76v6VWn/7
 pwksReng+Xr2jMQ3EzQgM+L/NUabrXujkC7xmocDNtoqM0XTZazEWvSEuOGGqLRRQeMKAS5wkOxkZ
 S5C6Fetb4xZzU8R0=;
Received: from mail-ua1-f42.google.com ([209.85.222.42])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1wFFJO-0003j2-EF for openipmi-developer@lists.sourceforge.net;
 Tue, 21 Apr 2026 17:55:03 +0000
Received: by mail-ua1-f42.google.com with SMTP id
 a1e0cc1a2514c-9568bae58f7so1998089241.3
 for <openipmi-developer@lists.sourceforge.net>;
 Tue, 21 Apr 2026 10:55:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=minyard.net; s=google; t=1776794091; x=1777398891; darn=lists.sourceforge.net;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=mSwCSc5fH6IwvCnImMYsVU3mZaN0tZTlBhr1KdpVNwA=;
 b=onkmZDj46FJ/R774Y7LgOArqijiljb9XGRAPW/lzeo92oqn4tBdpLcZj3ysXS8RM/+
 ocNGtrCIKjtuOC1hLRGTCNq7dOEzbwcHvG4EL6urJ1Zynq3NIH3KFjgwRMbQLofoc09c
 J9HICVd8aOvYO7N8PGGiBkU6ZGCkOWcqIDA1UcZK+Kyc4YAraEjPvWZ7c0oIuC19r3Xp
 V/kDVFDCGUz0JKJd/OgBr6wSvA/gNrQjaYAsPlRAbXjbeCy5Ab9DNkDCq92i+M6g/98d
 BEvASBhOKBAQSzY7bk+ys2SdHdU0zaJF3ANJ6QajodV5ptfgNsRGSiM13lFc1bm3GN69
 iiSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1776794091; x=1777398891;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=mSwCSc5fH6IwvCnImMYsVU3mZaN0tZTlBhr1KdpVNwA=;
 b=S9w1eQZYvvGUmuEuEGqGXXYWVSeV636oLLKI1StAmyHFbWzkp50OCsXEnB6eS4JSpp
 YSWx83ZKDV25kdGxKetiS2DoSklVbDZwtK8chuKL5txEEjPoXrZHVQmmIVKRnjohMmAx
 gzK30AKWBfrxtkWF8G9pGavHMdj7mxnxk7Hj7/7meQ95kJ1SnyXkLWVqdONlhRN8+36h
 xUXLv580QFX1bKEyE/HP9vVkatsei+sFhwABWokyUw8gkyP7tR7TtqYWE2uTOAMVqFDT
 +Gvf3ZxhbTpoB6x1dJqzQzKpn7VkAi94nvFhV5F+dBfg6/ApNgDrFkaV1lmOGO/1BqZ3
 /Z5Q==
X-Gm-Message-State: AOJu0YyIKH8a9BRvVer0CjDVFYPSghF0tV+BFwAlRHkm+rZ2yqeUvaNT
 DDb3ded/RPQksjC/M24JAYzN7M5vWnishqwcC2x+o2EIa7GemAc2+iYsmEiO5dnYcuQL6DUxwUD
 f/hRs
X-Gm-Gg: AeBDieurJcVzCQz0U1IhLE8rSiM1WZAbsNTn/kpEaRD/Z1D/NmNbW3a5rfTAAvnXMMC
 MNCL1Y9WhxjaO0cTkJztrVIuVONY98ojNIskSQTH/Ek13wOXR+YlBwzZ8CQNfsAe8DwOuyhH8DI
 uDoDjAgp4x3hS76UMXxLq/mOrpcnX+//LYxq/5UUcHGarCGotFhoDVnZjFbKb8OjqHWZEN1iKiS
 ccPA7VqZe/OotDDTEygAphLWM/AUwRcrkm87WTMqKimkY3MhANaq2RpyTyEB/j1LzzRNp1jJAhZ
 ebMMwAVcbAuQHRh3jt7h8GuIvlfZFRQ5S9yhcu9GXdID+67BxhIxnf111BK48MJzJagHx7ILLKr
 a+Ljp47s/eYGffpgmRkvOTbShLK3JiZOzPZPgfV90++G3AG2IaXF0L5CXhUVxH+tKayflH9egcp
 47dV0zwYz/qNqJ4YZpfjwRSKfRGFjabKfC8QTUb/tgsoZLISisbR/2CYL6Z0x5ihuuRgkzdwAAk
 p44fFuswPrr9sRu
X-Received: by 2002:a05:6808:f87:b0:467:ea5:69b5 with SMTP id
 5614622812f47-4799c989368mr9143525b6e.22.1776777950146; 
 Tue, 21 Apr 2026 06:25:50 -0700 (PDT)
Received: from localhost ([2001:470:b8f6:1b:376f:c507:59cb:4749])
 by smtp.gmail.com with UTF8SMTPSA id
 5614622812f47-479a03ac624sm9154889b6e.18.2026.04.21.06.25.49
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 21 Apr 2026 06:25:49 -0700 (PDT)
From: Corey Minyard <corey@minyard.net>
To: Matt Fleming <mfleming@cloudflare.com>
Date: Tue, 21 Apr 2026 07:42:42 -0500
Message-ID: <20260421132544.2666174-1-corey@minyard.net>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Matt reported that there were issues with the IPMI driver
 getting wedged in some cases. It turns out that the BMC was not reporting
 an error as it should have (per the spec) when the event queue was e [...]
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.42 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1wFFJO-0003j2-EF
Subject: [Openipmi-developer] [PATCH 0/1] ipmi: Fix issues with BMCs that
 report event and message incorrectly
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
Cc: openipmi-developer@lists.sourceforge.net, kernel-team@cloudflare.com,
 linux-kernel@vger.kernel.org, Tony Camuso <tcamuso@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net
X-Spamd-Result: default: False [-0.01 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[216.105.38.7:from];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[minyard.net : SPF not aligned (strict), DKIM not aligned (strict),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:mfleming@cloudflare.com,m:openipmi-developer@lists.sourceforge.net,m:kernel-team@cloudflare.com,m:linux-kernel@vger.kernel.org,m:tcamuso@redhat.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[corey@minyard.net,openipmi-developer-bounces@lists.sourceforge.net];
	FORWARDED(0.00)[openipmi-developer@lists.sourceforge.net];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_MIXED(0.00)[];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,minyard.net:-];
	RCPT_COUNT_FIVE(0.00)[5];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[corey@minyard.net,openipmi-developer-bounces@lists.sourceforge.net];
	FROM_HAS_DN(0.00)[];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,minyard.net:s=google];
	PREVIOUSLY_DELIVERED(0.00)[openipmi-developer@lists.sourceforge.net];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	TAGGED_RCPT(0.00)[openipmi-developer];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.sourceforge.net:dkim,lists.sourceforge.net:helo,lists.sourceforge.net:rdns,minyard.net:mid]
X-Rspamd-Queue-Id: 71BD643E378
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Matt reported that there were issues with the IPMI driver getting wedged
in some cases.  It turns out that the BMC was not reporting an error as
it should have (per the spec) when the event queue was empty.  The IPMI
driver would then request the next event, and so on, wedging the driver.

The BMC sits on a fuzzy line between a trusted devices and a remote and
possibly untrusted device.  If you compromised a BMC you have all sorts
of tools you can use to attack the host: the reset line, interrupts,
and usually access to write the system firmware and possibly devices
like disk drives, serial ports and VGA consoles.  So attacking through
this interface would not be the first thing you would do.  But it is an
possible attack point.

I'm assuming that the BMC was delivering an empty message when this
happens, so the first patch checks the message length to make sure it's
a valid message.  It's a good check no matter what, so it's in
whether that's the issue or not.

The second patch limits the number of events or messages that can
be fetched at a time to 10.  This is a good thing to do, anyway.
If more message or events were present, the next flag check should
get them.  So it's a more general fix.

I looked at adding the patch Matt suggested, doing a timeout on the
wait, but that introduces some race conditions if the response comes
back late.  That will require some more thought.

The timeouts with IPMI can be pretty long, the spec specifies fairly
long timeouts, 5 seconds waiting for the BMC to respond to anything.
So failing an operation can take some time, and reducing the timeouts
is probably a bad idea.  No rationale is given in the spec, but I'm
guessing it expects that a BMC in restart can recover within 5 seconds,
so it gives timeouts so the BMC is always available within that tie.

The spec gives you the gist that the BMC should always be available
on a system that has one.  So the driver (at the beginning) followed
that.

Thus the driver tries 10 times for a message before it gives up, giving
50 seconds total failure time for a message.  That is not in the spec (I
don't think) so that could be made selectable on a per-message basis.
There are already mechanisms for this available in the APIs; I'll look
at that.

-corey



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
