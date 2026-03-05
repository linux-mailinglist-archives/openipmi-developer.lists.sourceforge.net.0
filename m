Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cIO3HX21qWkZCwEAu9opvQ
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	for <lists+openipmi-developer@lfdr.de>; Thu, 05 Mar 2026 17:55:25 +0100
X-Original-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A2BC215A11
	for <lists+openipmi-developer@lfdr.de>; Thu, 05 Mar 2026 17:55:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:In-Reply-To:References:
	MIME-Version:Sender:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=WE2PAUdpdfVAzQGawieWJybsN6c3JO099YjLGNIwrV8=; b=J8cVhxJgtW6XeGdi/0fkzlD9CG
	ps4n06PDdAjFHonWwd4XjNKfd97vxYqfZaW8+OehNZE5B3GMNoWsmC+avcOFfhVZcUH3XTCyE+4kT
	tXUfI+DbqtUCMc/WhLmKiAM686N/8kvbd7hjT+1Z9MD7vb9nLknoMIU8Jkd+8cYjEwro=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1vyByj-00073k-Ag;
	Thu, 05 Mar 2026 16:55:13 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <marco.crivellari@suse.com>) id 1vyByi-00073e-R2
 for openipmi-developer@lists.sourceforge.net;
 Thu, 05 Mar 2026 16:55:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=QBPhC4r6iUpi6B/s0sgiuf0iYv1RyYKVABoa2NynEh8=; b=dJlD+LkIDJTpiPLn5fwxt6/04E
 FKYSeeTk1rTjUCR63RF8tAZgrN6mv+K7gCh5Fj3/5xkdvzf9I5IzufA7oG0itBjJb/mEhJyQzmIsY
 WmJLuU6zxQL+8dkEXOA4d/fQfiO6cNn5cCd4dOvwhduoBkzvCmZfLW5Xld8AFZ9lkN00=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=QBPhC4r6iUpi6B/s0sgiuf0iYv1RyYKVABoa2NynEh8=; b=kccDE8T47bhUCa45UuwnigsybJ
 KdMgcVjysPckW3QocznYUoDyuwjYJuaJUWp8J+3OOYJCiMWKyOeqkcernZ2f3CZDqK1ucdiHOT4lW
 gpF/Bhwrsf5UjrCX559m6die0CRtWJEco8uI3Nvur1h9wbKGo3VySryeHz71anXfYxb8=;
Received: from mail-ed1-f51.google.com ([209.85.208.51])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1vyByi-0003ZI-Gu for openipmi-developer@lists.sourceforge.net;
 Thu, 05 Mar 2026 16:55:12 +0000
Received: by mail-ed1-f51.google.com with SMTP id
 4fb4d7f45d1cf-660f1a1e977so2365716a12.3
 for <openipmi-developer@lists.sourceforge.net>;
 Thu, 05 Mar 2026 08:55:12 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1772729701; cv=none;
 d=google.com; s=arc-20240605;
 b=Ht9pCtoR5R5v3CnXTxz2dQB6NmR73Sje1rALtSq8FeP7EgDvOq8Oo3eUe7yTzP6Tsn
 Nn6TfoxhfYl1n3bOLBbYq2WtC/UIrd7paZtfLZg0pjHOpBcbqzgrTbZ9EXyz1+C6R16n
 i5Bol6Da1GSOUb/Q1iKE1IJtwX1zeNZ5mRXps9vgnKAe12kn5k7wxCm/FZ7TEEtOnflL
 Pi6noC3X6H4JqAeieNL7jkT7rTnTsa/Fim4n7PX4oksbUn7Tw+Rs+1z9pL2FiLslwZWQ
 wvfRTVyQzNwPo4MtDlQso8W/whs3C1XrArG36EtYNPpbSjp5Wp/K+U4m/rMrcX2BB/F6
 R0rQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com;
 s=arc-20240605; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:dkim-signature;
 bh=QBPhC4r6iUpi6B/s0sgiuf0iYv1RyYKVABoa2NynEh8=;
 fh=Gqh5tyjCBNaTYFtkGMYvC5vCm86qOxvd7hXO6wbxb2M=;
 b=ZFWQ7QbtSYkMiybEIs6+stiI3qRp4KZX+1NXMoYvpKLytYj2MDQxymiY5DRKR8/PHC
 4tkr7O81yPavMVGKO5HuF5n6TVQUhRQ0JF4sGn91LP8MuuS3RLvTdRslAnJaS7M+QYae
 X0KQPcsuTDldWHQsKsaqsmYXYBZqyErBy6F17H6G0jgMNGLBuEEY+kATQSd/uQJ7l/Ge
 NgL5i0a2wyFEUq6bju7G+JE5LAdO6XWA/+HLnHY8wgmI+gyVzT3xRlmDkDylc2ko38st
 xVlMSpoIf03og4N/x8OwICfKCoR18caN87LPMg2LCoNC9ak9cAwfE5Lk0tb8i29/U2F2
 bDBg==; darn=lists.sourceforge.net
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=suse.com; s=google; t=1772729701; x=1773334501; darn=lists.sourceforge.net; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=QBPhC4r6iUpi6B/s0sgiuf0iYv1RyYKVABoa2NynEh8=;
 b=GCPq9oxJTszGfS/Zm/h1RN2aRXPt2PWF4AJ7DcYXDgMsKw7emJ1pywmH4Q1ObIQFhZ
 dI92rrD3Lb+tfcsbnlycpak2S3voaNPgG3T3yQiI2YsQ99j4j+wfFaGmsexSIXDfpHQc
 mfRFkmBiWpBz0YZ2apI4L6nayOI37/LAca2ar+YL4CfgjxVXpZe0Q9H7SQ+gxPMW0Xvn
 9K1CN2pzIDt8N2Zu0WkgCZFJKH21Ys8gxOtH/SNUzpw+F0MA/VLOFIQvJZpkVTWjmQpn
 JVz/StWIWUtt83/ucJMPdnVH9jpIm7O/zEkpcsilGlqfW6PDC3/HKj5waLhMsMa4BXMQ
 95ZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1772729701; x=1773334501;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=QBPhC4r6iUpi6B/s0sgiuf0iYv1RyYKVABoa2NynEh8=;
 b=GZMCHZtpUEc0jPSjJN4om3KD7xjCmDiE0NMgHneCtWq2vDq2RLFF1ESPsNTI8M0v5i
 9aTal5gw2S8K25NewgSAJdW4iV2Vjjsr13dH5aoMHX86iKjLIpW+xCOLfnkk5ylLVLLw
 xH+glTSV7Dhgm+jiTXRm1f6wE763tWST7B4XKi7vAPrr99evCCijyR3VZG+/s9nVtpz6
 hgzf30ja886mVfgdEg08yKLRy5bz61bsEJU3EngoJ638YGIxwPN6x5WzPghKRvwwANTZ
 CeJbH9QLx16vnIgrnZu5ZzKOpSdEZ3yYin0sgU8o2+bszIQ7lNtL94MZkZl2jCnd2IbR
 hhxA==
X-Forwarded-Encrypted: i=1;
 AJvYcCVVmq7LrmZKlZYzdbhQQF/d6hoJjhHMTrOyIaIhd+XNRHPKblotvX4/+7bd/7gAM26GQZLHUbX8FTGfTwf6Y7OlIv0=@lists.sourceforge.net
X-Gm-Message-State: AOJu0Yz6ZB1M25BI+wtvueBq4xTl4Dm3J7z2Ai9HZbzwsLrla6HTF09y
 Xv8rqEk4qDqOguLTXtyQ+4GpdrZkqoRNJqMW3ycPyXrhrngvIF4i1dRRFSQNTRhMckLibvj7455
 tm8PmF2KHl7UxI9k85NGORWHTT+xmPba1xJI/wPGE8APfBuVU4O37Zws=
X-Gm-Gg: ATEYQzwVYzA1q1Ne8uMvZThoudzRHQM/4xSqNol7r0VrL6udA98JFbL9s7WUed0huRl
 Hzlh4xUcu8QiMECew8Hbby805EUBl+JEnJZ5ENNFYvz8mepoG1p5OMKzV4Lh+z+TAA4QilRSJ1b
 ZXcRn5EX+TuBf5wNX9CxrWicUwG1NzVDkGWdpHsJpG0MibbxEEYw2GOAjkY7itFxqjw3FSD3nFc
 jpKY1Csnp4aeUn1eMX/zWbRs/vb6NRAXSvXleh6+GpaZrAcLbWgI3bNeSI0jPTZwGupDGNeW29S
 Iej/po1jEuBU0zAJJ/fB8cnDYpv7XkQIOd0S6+aY
X-Received: by 2002:ac2:55a6:0:b0:5a1:33b6:2b6d with SMTP id
 2adb3069b0e04-5a137e7c323mr30898e87.14.1772729273183; Thu, 05 Mar 2026
 08:47:53 -0800 (PST)
MIME-Version: 1.0
References: <20251224161301.135382-1-marco.crivellari@suse.com>
In-Reply-To: <20251224161301.135382-1-marco.crivellari@suse.com>
Date: Thu, 5 Mar 2026 17:47:42 +0100
X-Gm-Features: AaiRm51eZxpabIL6fZum2XYWekwt99G4BPba5OwQvV6zEwqwwxGhOQ8jVuUtPQY
Message-ID: <CAAofZF4OZOHzBuBTYKVsbRp16+1auj3AvT7s5GhmK=NAgrRpAg@mail.gmail.com>
To: linux-kernel@vger.kernel.org, openipmi-developer@lists.sourceforge.net
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, Dec 24,
 2025 at 5:13 PM Marco Crivellari <marco.crivellari@suse.com>
 wrote: > drivers/char/ipmi/ipmi_msghandler.c | 10 +++++----- > 1 file changed, 
 5 insertions(+), 5 deletions(-) Hi, Gentle ping. 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 ARC_SIGNED             Message has a ARC signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 ARC_VALID              Message has a valid ARC signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.51 listed in wl.mailspike.net]
X-Headers-End: 1vyByi-0003ZI-Gu
Subject: Re: [Openipmi-developer] [PATCH] ipmi: Replace use of system_wq
 with system_percpu_wq
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
From: Marco Crivellari via Openipmi-developer
 <openipmi-developer@lists.sourceforge.net>
Reply-To: Marco Crivellari <marco.crivellari@suse.com>
Cc: Michal Hocko <mhocko@suse.com>, Frederic Weisbecker <frederic@kernel.org>,
 Lai Jiangshan <jiangshanlai@gmail.com>, Corey Minyard <corey@minyard.net>,
 Tejun Heo <tj@kernel.org>, Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: openipmi-developer-bounces@lists.sourceforge.net
X-Rspamd-Queue-Id: 7A2BC215A11
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-7.51 / 15.00];
	WHITELIST_DMARC(-7.00)[sourceforge.net:D:+];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[216.105.38.7:from];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DMARC_POLICY_ALLOW(0.00)[lists.sourceforge.net,none];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DKIM_MIXED(0.00)[];
	FORWARDED(0.00)[openipmi-developer@lists.sourceforge.net];
	FORGED_SENDER(0.00)[openipmi-developer@lists.sourceforge.net,openipmi-developer-bounces@lists.sourceforge.net];
	FORGED_RECIPIENTS(0.00)[m:linux-kernel@vger.kernel.org,m:openipmi-developer@lists.sourceforge.net,m:mhocko@suse.com,m:frederic@kernel.org,m:jiangshanlai@gmail.com,m:corey@minyard.net,m:tj@kernel.org,m:bigeasy@linutronix.de,s:lists@lfdr.de];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,suse.com:s=google];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[openipmi-developer@lists.sourceforge.net];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[openipmi-developer@lists.sourceforge.net,openipmi-developer-bounces@lists.sourceforge.net];
	FREEMAIL_CC(0.00)[suse.com,kernel.org,gmail.com,minyard.net,linutronix.de];
	RCPT_COUNT_SEVEN(0.00)[8];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	HAS_REPLYTO(0.00)[marco.crivellari@suse.com];
	TAGGED_RCPT(0.00)[openipmi-developer];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,suse.com:-];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[suse.com:replyto,suse.com:email,mail.gmail.com:mid,lists.sourceforge.net:dkim,lists.sourceforge.net:rdns,lists.sourceforge.net:helo]
X-Rspamd-Action: no action

T24gV2VkLCBEZWMgMjQsIDIwMjUgYXQgNToxM+KAr1BNIE1hcmNvIENyaXZlbGxhcmkKPG1hcmNv
LmNyaXZlbGxhcmlAc3VzZS5jb20+IHdyb3RlOgo+ICBkcml2ZXJzL2NoYXIvaXBtaS9pcG1pX21z
Z2hhbmRsZXIuYyB8IDEwICsrKysrLS0tLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDUgaW5zZXJ0aW9u
cygrKSwgNSBkZWxldGlvbnMoLSkKCkhpLAoKR2VudGxlIHBpbmcuCgpUaGFua3MhCgotLSAKCk1h
cmNvIENyaXZlbGxhcmkKCkwzIFN1cHBvcnQgRW5naW5lZXIKCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpPcGVuaXBtaS1kZXZlbG9wZXIgbWFpbGluZyBs
aXN0Ck9wZW5pcG1pLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0
cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vb3BlbmlwbWktZGV2ZWxvcGVyCg==
