Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ADulELUgyGmGhAUAu9opvQ
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	for <lists+openipmi-developer@lfdr.de>; Sat, 28 Mar 2026 19:40:53 +0100
X-Original-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B22434FAB9
	for <lists+openipmi-developer@lfdr.de>; Sat, 28 Mar 2026 19:40:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:References:To:MIME-Version:Date:
	Message-ID:Sender:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=X3Omdj05oXltM2iwnDPwCsIF7V1/Mzk3H61uHBQK4kE=; b=L2PbgfMIiZozjAtu5JKlYGkibk
	j+1aE8NNOIN4On6UXZz2/2NFC0MsIw+jzbqHfBqTGsqk7mb7aS2cdReBubmutlJwjtY2Lp2A629tV
	5Rn2VMhUEQLcNY53eTq8jz+cKAcCnCmfMkdvWFrqae1NEsx5mulgTN4T918fDSnL/n5A=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1w6YaO-0001RA-Bl;
	Sat, 28 Mar 2026 18:40:41 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <Markus.Elfring@web.de>) id 1w6YaM-0001Qt-9l
 for openipmi-developer@lists.sourceforge.net;
 Sat, 28 Mar 2026 18:40:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:Subject:References:Cc:To:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=rp0KLlyOcPxYIt1f5VzYWMurzYYBzbHfTfVlXut2sqI=; b=NCnhD+8xuWChqqCAVxhWVyiI6x
 br+PvbSkIL74/9l3iMTkRd22+MFmOUbkaNKrkXJdT2iiPhwCByQDnBMzklb6UDdGBK9+CwwnveX0b
 OGMAPC02Ks4UJ8hHmU9yDuM5GkLAxS47Uly0RRbD7HcUBkp3/NnKWBJWgON+bCcS4wzo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:Subject:
 References:Cc:To:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=rp0KLlyOcPxYIt1f5VzYWMurzYYBzbHfTfVlXut2sqI=; b=LVYzOVEZOLTQmIEg6S5PVHHBrI
 p1qWycpwxUmPSeGY3IZS9OpzgWnhifdblCc3SETLglkqKgUXBwLL7GUcn8WmIm2PfCXANTnXACoiK
 0AFZ6przM54+H76i0ciPnzcg0DjKZ0husodPq1s4nRyPDF6kEM1Zx+0EfBMhbBzw7O7E=;
Received: from mout.web.de ([212.227.15.3])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1w6YaM-0003JP-3s for openipmi-developer@lists.sourceforge.net;
 Sat, 28 Mar 2026 18:40:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=web.de;
 s=s29768273; t=1774723212; x=1775328012; i=markus.elfring@web.de;
 bh=rp0KLlyOcPxYIt1f5VzYWMurzYYBzbHfTfVlXut2sqI=;
 h=X-UI-Sender-Class:Message-ID:Date:MIME-Version:To:Cc:References:
 Subject:From:In-Reply-To:Content-Type:Content-Transfer-Encoding:
 cc:content-transfer-encoding:content-type:date:from:message-id:
 mime-version:reply-to:subject:to;
 b=mw2f7gB5NFJOyKMgWhCjbYZQQFwgBpwhQcy+8xE0oSxZ2i8XcwvxCTLrSk7Rs9r3
 YuPkr+0v9famua0uEHWcVX8Jdjux4X3FBTPAvy8klZa2qLl/m0WEzfdaxPYgkm9uL
 7jC71MFwldzjIEl+BAsiWB4+tJzWs0Qzc6zakjpwtWzsmQWZak87EACXK0BokgO3u
 ir7GJZQOSDm3LFj/s+UyFp8jY/+wQ5irqEzbFCV/y7vI7m3lWT/qD4j2+1yy2d8Zr
 3hppUTRXwk348sLEjNmckYsmj7bzm+c543yNtyg/sOokawEmz9ovCLgzFM2hzX2KM
 oEg8Z7u7aV29GoblSQ==
X-UI-Sender-Class: 814a7b36-bfc1-4dae-8640-3722d8ec6cd6
Received: from client.hidden.invalid by smtp.web.de (mrweb005
 [213.165.67.108]) with ESMTPSA (Nemesis) id 1MVrft-1vzAkL1dFl-00N28k; Sat, 28
 Mar 2026 19:40:12 +0100
Message-ID: <cb817407-3832-4363-b1d9-9bf7e2b616ab@web.de>
Date: Sat, 28 Mar 2026 19:40:11 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Felix Gu <ustc.gu@gmail.com>, openipmi-developer@lists.sourceforge.net,
 Corey Minyard <corey@minyard.net>
References: <20260327-ipmi-v1-1-d4a4417140b2@gmail.com>
Content-Language: en-GB, de-DE
In-Reply-To: <20260327-ipmi-v1-1-d4a4417140b2@gmail.com>
X-Provags-ID: V03:K1:v+b33uAqgmSMf9HDzISXG2AuRNcvnMi6orekrHygMj40bmSdOKS
 8lGZFcdbh56V6a7JJQkJhCdv6b843/69jDKab+K3LwsoyTZ3JZD/n7C9/Zl2Q6Km5nCphqM
 rXsRrc6iuv1e0lLtSo3CYuv3/49lv9R9dHePf9UeS6JNo3AaEyUFs2BAmTlCrKeIH8/a7e6
 6TNA7QMfCmXdxgI/R1nUA==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:huD8OFywm2w=;IRnjN5ItY2h0K8wQJWDEp37eJ/t
 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
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "sfi-spamd-1.hosts.colo.sdot.me",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  … > +++ b/drivers/char/ipmi/ipmi_msghandler.c > @@ -3734,6
    +3734,7 @@ int ipmi_add_smi(struct module *owner, > sysfs_attr_init(&intf->maintenance_mode_devattr.attr);
    > rv = device_create_file(intf-> [...] 
 
 Content analysis details:   (-0.2 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail provider
                             [markus.elfring(at)web.de]
  0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
                             [212.227.15.3 listed in wl.mailspike.net]
  0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1w6YaM-0003JP-3s
Subject: Re: [Openipmi-developer] [PATCH] ipmi: Fix sysfs file leak on
 maintenance_mode creation failure
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
From: Markus Elfring via Openipmi-developer
 <openipmi-developer@lists.sourceforge.net>
Reply-To: Markus Elfring <Markus.Elfring@web.de>
Cc: LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: openipmi-developer-bounces@lists.sourceforge.net
X-Spamd-Result: default: False [-5.01 / 15.00];
	WHITELIST_DMARC(-7.00)[sourceforge.net:D:+];
	FREEMAIL_REPLYTO_NEQ_FROM(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[216.105.38.7:from];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:ustc.gu@gmail.com,m:openipmi-developer@lists.sourceforge.net,m:corey@minyard.net,m:linux-kernel@vger.kernel.org,m:ustcgu@gmail.com,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com,lists.sourceforge.net,minyard.net];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[openipmi-developer@lists.sourceforge.net];
	FREEMAIL_REPLYTO(0.00)[web.de];
	FORGED_SENDER(0.00)[openipmi-developer@lists.sourceforge.net,openipmi-developer-bounces@lists.sourceforge.net];
	RCVD_TLS_LAST(0.00)[];
	DKIM_MIXED(0.00)[];
	MIME_TRACE(0.00)[0:+];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,web.de:s=s29768273];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.601];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[openipmi-developer@lists.sourceforge.net,openipmi-developer-bounces@lists.sourceforge.net];
	DMARC_POLICY_ALLOW(0.00)[lists.sourceforge.net,none];
	TAGGED_RCPT(0.00)[openipmi-developer];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	HAS_REPLYTO(0.00)[Markus.Elfring@web.de];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,web.de:-];
	RCPT_COUNT_THREE(0.00)[4];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.sourceforge.net:helo,lists.sourceforge.net:rdns,lists.sourceforge.net:dkim]
X-Rspamd-Queue-Id: 4B22434FAB9
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

4oCmCj4gKysrIGIvZHJpdmVycy9jaGFyL2lwbWkvaXBtaV9tc2doYW5kbGVyLmMKPiBAQCAtMzcz
NCw2ICszNzM0LDcgQEAgaW50IGlwbWlfYWRkX3NtaShzdHJ1Y3QgbW9kdWxlICAgICAgICAgKm93
bmVyLAo+ICAJc3lzZnNfYXR0cl9pbml0KCZpbnRmLT5tYWludGVuYW5jZV9tb2RlX2RldmF0dHIu
YXR0cik7Cj4gIAlydiA9IGRldmljZV9jcmVhdGVfZmlsZShpbnRmLT5zaV9kZXYsICZpbnRmLT5t
YWludGVuYW5jZV9tb2RlX2RldmF0dHIpOwo+ICAJaWYgKHJ2KSB7Cj4gKwkJZGV2aWNlX3JlbW92
ZV9maWxlKGludGYtPnNpX2RldiwgJmludGYtPm5yX21zZ3NfZGV2YXR0cik7Cj4gIAkJZGV2aWNl
X3JlbW92ZV9maWxlKGludGYtPnNpX2RldiwgJmludGYtPm5yX3VzZXJzX2RldmF0dHIpOwo+ICAJ
CWdvdG8gb3V0X2Vycl9ibWNfcmVnOwo+ICAJfQoKSG93IGRvIHlvdSB0aGluayBhYm91dCB0byBh
dm9pZCBhIGJpdCBvZiBkdXBsaWNhdGUgc291cmNlIGNvZGUgaGVyZT8KaHR0cHM6Ly9naXQua2Vy
bmVsLm9yZy9wdWIvc2NtL2xpbnV4L2tlcm5lbC9naXQvdG9ydmFsZHMvbGludXguZ2l0L3RyZWUv
RG9jdW1lbnRhdGlvbi9wcm9jZXNzL2NvZGluZy1zdHlsZS5yc3Q/aD12Ny4wLXJjNSNuNTI2CgpS
ZWdhcmRzLApNYXJrdXMKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpPcGVuaXBtaS1kZXZlbG9wZXIgbWFpbGluZyBsaXN0Ck9wZW5pcG1pLWRldmVsb3Bl
ckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlz
dHMvbGlzdGluZm8vb3BlbmlwbWktZGV2ZWxvcGVyCg==
