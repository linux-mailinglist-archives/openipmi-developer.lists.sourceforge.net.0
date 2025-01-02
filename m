Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 13BAB9FF9EE
	for <lists+openipmi-developer@lfdr.de>; Thu,  2 Jan 2025 14:46:34 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1tTLWt-0000Zu-4x;
	Thu, 02 Jan 2025 13:46:27 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <tzimmermann@suse.de>) id 1tTLJY-0004yW-6H
 for openipmi-developer@lists.sourceforge.net;
 Thu, 02 Jan 2025 13:32:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=RlpeBegLDMWjIlaozf6zr/23rBU7oNvZVb1IrqZ6KHo=; b=gkvS4+KbRUpdvCAEEH5mYL6No1
 DdSmkXtTeKYlRQ1FWwQkHDUWWqehtFHPXrZN2RjF4PEWsYgrpLpovxfsK4goyyMv/2tIgWh4Iqv8i
 sXrBY7aD2MsUN+dkLkF82QK0zhzmnUupylX8rB+9b9jJIeyqqxmToirMgtELGt7b0yaQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=RlpeBegLDMWjIlaozf6zr/23rBU7oNvZVb1IrqZ6KHo=; b=Wxziik4mnjnxPYzcc7JmPgpnJn
 QY/Q2NBXNBla95ztobMh3ul4V3Gw9/WSO8y2GbkGErXehxarXqBzxWBUtJtM6Rlu9e/E+hXGa+Kso
 BJrWy1urdYsBOyFD7ZsLNUFyOO1t4abtIjoWnYlXPAexIGs0H7QoWIElKj+Jy4uBQmlo=;
Received: from smtp-out1.suse.de ([195.135.223.130])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1tTLJX-0001Dr-PV for openipmi-developer@lists.sourceforge.net;
 Thu, 02 Jan 2025 13:32:40 +0000
Received: from imap1.dmz-prg2.suse.org (unknown [10.150.64.97])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-out1.suse.de (Postfix) with ESMTPS id 6471C2115F;
 Thu,  2 Jan 2025 13:32:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
 t=1735824748; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
 bh=RlpeBegLDMWjIlaozf6zr/23rBU7oNvZVb1IrqZ6KHo=;
 b=1QxeSUBxYrahEdYTWGgcoWxi5ScO4QnBe34R6T79AznUPmjZInp/BLjNEHitk6NC+RHfC+
 FwLGo8I8zVYmmiEDZXnLNgzRs2cSevvgzpx6bw3zfPTbBJ6e5omy7H6oPJngO/hq5Yf/jr
 V8AJn+X36Yl8lhv8LdKrbdFbOr6CJVY=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
 s=susede2_ed25519; t=1735824748;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
 bh=RlpeBegLDMWjIlaozf6zr/23rBU7oNvZVb1IrqZ6KHo=;
 b=WgaNnnIdsJ6Ijw9kBOzR+YcXefqL7kghxoU3Dq6wbkx7d+Hght8ux30TnPT6U4Mf2szNpF
 JVdQVMIybr+pDiDw==
Authentication-Results: smtp-out1.suse.de;
	none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
 t=1735824748; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
 bh=RlpeBegLDMWjIlaozf6zr/23rBU7oNvZVb1IrqZ6KHo=;
 b=1QxeSUBxYrahEdYTWGgcoWxi5ScO4QnBe34R6T79AznUPmjZInp/BLjNEHitk6NC+RHfC+
 FwLGo8I8zVYmmiEDZXnLNgzRs2cSevvgzpx6bw3zfPTbBJ6e5omy7H6oPJngO/hq5Yf/jr
 V8AJn+X36Yl8lhv8LdKrbdFbOr6CJVY=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
 s=susede2_ed25519; t=1735824748;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
 bh=RlpeBegLDMWjIlaozf6zr/23rBU7oNvZVb1IrqZ6KHo=;
 b=WgaNnnIdsJ6Ijw9kBOzR+YcXefqL7kghxoU3Dq6wbkx7d+Hght8ux30TnPT6U4Mf2szNpF
 JVdQVMIybr+pDiDw==
Received: from imap1.dmz-prg2.suse.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by imap1.dmz-prg2.suse.org (Postfix) with ESMTPS id 01D6D132EA;
 Thu,  2 Jan 2025 13:32:27 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
 by imap1.dmz-prg2.suse.org with ESMTPSA id E66rOmuVdmdQBwAAD6G6ig
 (envelope-from <tzimmermann@suse.de>); Thu, 02 Jan 2025 13:32:27 +0000
Message-ID: <390c14a5-44fe-4328-bcc4-2aa1384e3ad1@suse.de>
Date: Thu, 2 Jan 2025 14:32:27 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Binbin Zhou <zhoubb.aaron@gmail.com>
References: <cover.1735550269.git.zhoubinbin@loongson.cn>
 <4d62076ee560b35c653a9fbced8d03ef3bdb3005.1735550269.git.zhoubinbin@loongson.cn>
 <3daaaff8-062a-4985-a5bc-8d228314b02e@suse.de>
 <CAMpQs4JcuRhpOyXHxy0ab+D-Wd0itKdb0GiZdTE59_qEpUfyLA@mail.gmail.com>
Content-Language: en-US
From: Thomas Zimmermann <tzimmermann@suse.de>
Autocrypt: addr=tzimmermann@suse.de; keydata=
 xsBNBFs50uABCADEHPidWt974CaxBVbrIBwqcq/WURinJ3+2WlIrKWspiP83vfZKaXhFYsdg
 XH47fDVbPPj+d6tQrw5lPQCyqjwrCPYnq3WlIBnGPJ4/jreTL6V+qfKRDlGLWFjZcsrPJGE0
 BeB5BbqP5erN1qylK9i3gPoQjXGhpBpQYwRrEyQyjuvk+Ev0K1Jc5tVDeJAuau3TGNgah4Yc
 hdHm3bkPjz9EErV85RwvImQ1dptvx6s7xzwXTgGAsaYZsL8WCwDaTuqFa1d1jjlaxg6+tZsB
 9GluwvIhSezPgnEmimZDkGnZRRSFiGP8yjqTjjWuf0bSj5rUnTGiyLyRZRNGcXmu6hjlABEB
 AAHNJ1Rob21hcyBaaW1tZXJtYW5uIDx0emltbWVybWFubkBzdXNlLmRlPsLAjgQTAQgAOAIb
 AwULCQgHAgYVCgkICwIEFgIDAQIeAQIXgBYhBHIX+6yM6c9jRKFo5WgNwR1TC3ojBQJftODH
 AAoJEGgNwR1TC3ojx1wH/0hKGWugiqDgLNXLRD/4TfHBEKmxIrmfu9Z5t7vwUKfwhFL6hqvo
 lXPJJKQpQ2z8+X2vZm/slsLn7J1yjrOsoJhKABDi+3QWWSGkaGwRJAdPVVyJMfJRNNNIKwVb
 U6B1BkX2XDKDGffF4TxlOpSQzdtNI/9gleOoUA8+jy8knnDYzjBNOZqLG2FuTdicBXblz0Mf
 vg41gd9kCwYXDnD91rJU8tzylXv03E75NCaTxTM+FBXPmsAVYQ4GYhhgFt8S2UWMoaaABLDe
 7l5FdnLdDEcbmd8uLU2CaG4W2cLrUaI4jz2XbkcPQkqTQ3EB67hYkjiEE6Zy3ggOitiQGcqp
 j//OwE0EWznS4AEIAMYmP4M/V+T5RY5at/g7rUdNsLhWv1APYrh9RQefODYHrNRHUE9eosYb
 T6XMryR9hT8XlGOYRwKWwiQBoWSDiTMo/Xi29jUnn4BXfI2px2DTXwc22LKtLAgTRjP+qbU6
 3Y0xnQN29UGDbYgyyK51DW3H0If2a3JNsheAAK+Xc9baj0LGIc8T9uiEWHBnCH+RdhgATnWW
 GKdDegUR5BkDfDg5O/FISymJBHx2Dyoklv5g4BzkgqTqwmaYzsl8UxZKvbaxq0zbehDda8lv
 hFXodNFMAgTLJlLuDYOGLK2AwbrS3Sp0AEbkpdJBb44qVlGm5bApZouHeJ/+n+7r12+lqdsA
 EQEAAcLAdgQYAQgAIAIbDBYhBHIX+6yM6c9jRKFo5WgNwR1TC3ojBQJftOH6AAoJEGgNwR1T
 C3ojVSkIALpAPkIJPQoURPb1VWjh34l0HlglmYHvZszJWTXYwavHR8+k6Baa6H7ufXNQtThR
 yIxJrQLW6rV5lm7TjhffEhxVCn37+cg0zZ3j7zIsSS0rx/aMwi6VhFJA5hfn3T0TtrijKP4A
 SAQO9xD1Zk9/61JWk8OysuIh7MXkl0fxbRKWE93XeQBhIJHQfnc+YBLprdnxR446Sh8Wn/2D
 Ya8cavuWf2zrB6cZurs048xe0UbSW5AOSo4V9M0jzYI4nZqTmPxYyXbm30Kvmz0rYVRaitYJ
 4kyYYMhuULvrJDMjZRvaNe52tkKAvMevcGdt38H4KSVXAylqyQOW5zvPc4/sq9c=
In-Reply-To: <CAMpQs4JcuRhpOyXHxy0ab+D-Wd0itKdb0GiZdTE59_qEpUfyLA@mail.gmail.com>
X-Spam-Level: 
X-Spamd-Result: default: False [-2.80 / 50.00]; BAYES_HAM(-3.00)[100.00%];
 SUSPICIOUS_RECIPS(1.50)[]; NEURAL_HAM_LONG(-1.00)[-1.000];
 NEURAL_HAM_SHORT(-0.20)[-1.000]; MIME_GOOD(-0.10)[text/plain];
 MIME_TRACE(0.00)[0:+]; TAGGED_RCPT(0.00)[];
 RCVD_VIA_SMTP_AUTH(0.00)[]; RCPT_COUNT_TWELVE(0.00)[16];
 ARC_NA(0.00)[]; RCVD_TLS_ALL(0.00)[];
 FREEMAIL_TO(0.00)[gmail.com];
 FREEMAIL_ENVRCPT(0.00)[gmail.com];
 DKIM_SIGNED(0.00)[suse.de:s=susede2_rsa,suse.de:s=susede2_ed25519];
 FROM_HAS_DN(0.00)[];
 FREEMAIL_CC(0.00)[loongson.cn,kernel.org,acm.org,linux.intel.com,gmail.com,ffwll.ch,vger.kernel.org,lists.sourceforge.net,lists.freedesktop.org,xen0n.name,lists.linux.dev];
 MID_RHS_MATCH_FROM(0.00)[]; FROM_EQ_ENVFROM(0.00)[];
 RCVD_COUNT_TWO(0.00)[2]; TO_MATCH_ENVRCPT_ALL(0.00)[];
 FUZZY_BLOCKED(0.00)[rspamd.com]; TO_DN_SOME(0.00)[]
X-Spam-Score: -2.80
X-Spam-Flag: NO
X-Spam-Score: -2.5 (--)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hi Am 02.01.25 um 13:55 schrieb Binbin Zhou: > Hi Thomas:
   > > Thanks for your reply. > > On Thu, Jan 2, 2025 at 5:07 PM Thomas Zimmermann
    <tzimmermann@suse.de> wrote: >> Hi >> >> >> Am 30.12.24 um 10:3 [...] 
 
 Content analysis details:   (-2.5 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
                             The query to Validity was blocked.  See
                             https://knowledge.validity.com/hc/en-us/articles/20961730681243
                              for more information.
                        [195.135.223.130 listed in sa-trusted.bondedsender.org]
  0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
                             query to Validity was blocked.  See
                             https://knowledge.validity.com/hc/en-us/articles/20961730681243
                              for more information.
                           [195.135.223.130 listed in bl.score.senderscore.com]
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
                             medium trust
                             [195.135.223.130 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
X-Headers-End: 1tTLJX-0001Dr-PV
X-Mailman-Approved-At: Thu, 02 Jan 2025 13:46:18 +0000
Subject: Re: [Openipmi-developer] [PATCH v1 3/4] drm/ls2kbmc: Add support
 for Loongson-2K BMC display
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
Cc: Simona Vetter <simona@ffwll.ch>, Chong Qiao <qiaochong@loongson.cn>,
 Huacai Chen <chenhuacai@kernel.org>, Corey Minyard <minyard@acm.org>,
 Binbin Zhou <zhoubinbin@loongson.cn>, Lee Jones <lee@kernel.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 linux-kernel@vger.kernel.org, Maxime Ripard <mripard@kernel.org>,
 dri-devel@lists.freedesktop.org, loongarch@lists.linux.dev,
 openipmi-developer@lists.sourceforge.net, David Airlie <airlied@gmail.com>,
 Xuerui Wang <kernel@xen0n.name>, Huacai Chen <chenhuacai@loongson.cn>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

SGkKCgpBbSAwMi4wMS4yNSB1bSAxMzo1NSBzY2hyaWViIEJpbmJpbiBaaG91Ogo+IEhpIFRob21h
czoKPgo+IFRoYW5rcyBmb3IgeW91ciByZXBseS4KPgo+IE9uIFRodSwgSmFuIDIsIDIwMjUgYXQg
NTowN+KAr1BNIFRob21hcyBaaW1tZXJtYW5uIDx0emltbWVybWFubkBzdXNlLmRlPiB3cm90ZToK
Pj4gSGkKPj4KPj4KPj4gQW0gMzAuMTIuMjQgdW0gMTA6MzEgc2NocmllYiBCaW5iaW4gWmhvdToK
Pj4gWy4uLl0KPj4+ICsKPj4+ICtzdGF0aWMgc3RydWN0IHBsYXRmb3JtX2RyaXZlciBsczJrYm1j
X3BsYXRmb3JtX2RyaXZlciA9IHsKPj4+ICsgICAgIC5kcml2ZXIgPSB7Cj4+PiArICAgICAgICAg
ICAgIC5uYW1lID0gImxzMmtibWMtZnJhbWVidWZmZXIiLAo+PiBUaGUgZHJpdmVyIGlzIG1vc3Rs
eSBhIGNvcHkgb2Ygc2ltcGxlZHJtLiBXaHkgZG9uJ3QgeW91IHVzZQo+PiAic2ltcGxlLWZyYW1l
YnVmZmVyIiBmb3IgeW91ciBkZXZpY2UgbmFtZT8gWW91IGNvdWxkIHVzZSBzaW1wbGVkcm0KPj4g
ZGlyZWN0bHkgdGhlbi4KPiBBaCwgaW5kZWVkLCB0aGUgZHJpdmVyIGlzIGJhc2VkIG9uIHNpbXBs
ZWRybS4KPgo+IEluaXRpYWxseSwgSSBhbHNvIHRyaWVkIHRvIHVzZSBzaW1wbGVkcm0gZGlyZWN0
bHksIGJ1dCBpdCB3aWxsIGZhaWwgaW4KPiBkcm0gbWVtb3J5IGFjcXVpcmUuCgpDb3VsZCB5b3Ug
cG9pbnQgdG8gdGhlIGV4YWN0IGNhbGwgdGhhdCBmYWlscyB3aXRoaW4gc2ltcGxlZHJtPwoKPiBC
ZWNhdXNlIGFsdGhvdWdoIHdlIHJlZ2lzdGVyIHRoZSBkcml2ZXIgaW4gcGxhdGZvcm0gZm9ybSwg
aXRzIG1lbW9yeQo+IGJlbG9uZ3MgdG8gcGNpIHNwYWNlIGFuZCB3ZSBjYW4gc2VlIHRoZSBjb3Jy
ZXNwb25kaW5nIHBjaSBwcm9iZSBhbmQKPiByZXNvdXJjZSBhbGxvY2F0aW9uIGluIFBhdGNoLTEu
CgpJIGRvbid0IHVuZGVyc3RhbmQuIEdyYXBoaWNzIG1lbW9yeSBpcyBvZnRlbiBsb2NhdGVkIG9u
IHRoZSBQQ0kgYnVzLiAKV2hhdCBpcyBzbyBzcGVjaWFsIGFib3V0IHRoaXMgb25lPwoKPiBUaGVy
ZWZvcmUsIHdlIG5lZWQgdG8gdXNlIGFwZXJ0dXJlX3JlbW92ZV9jb25mbGljdGluZ19wY2lfZGV2
aWNlcygpLgoKU28gdGhlcmUgaXMgYWxyZWFkeSBhIGRldmljZSB0aGF0IHJlcHJlc2VudHMgdGhl
IGdyYXBoaWNzIGNhcmQ/IFRoYXQncyAKd2hhdCB5b3UnZCByZW1vdmUgaGVyZT8gSWYgeW91IG9u
bHkgYWRkIHRoYXQgTUZEIGRldmljZSwgd2hvIG93bnMgdGhlIApmcmFtZWJ1ZmZlcj8gSWYgaXQn
cyB0aGUgUENJIGRldmljZSBmcm9tIHBhdGNoIDEgKCJsczJrLWJtYyIpLCB3aHkgZG9lcyAKYXBl
cnR1cmVfcmVtb3ZlX2NvbmZsaWN0aW5nX3BjaV9kZXZpY2VzKCkgbm90IHJlbW92ZSB0aGF0IGRl
dmljZT8gSSdtIApzb21ld2hhdCBjb25mdXNlZCwgYmVjYXVzZSB0aGUgbG9naWMgaW4geW91ciBk
cml2ZXIgbW9zdGx5IGxvb2tzIGxpa2UgaXQgCmJpbmRzIHRvIGEgcHJlLWNvbmZpZ3VyZWQgZnJh
bWVidWZmZXIsIGJ1dCBzb21lIG9mIHRoZSBjb2RlIGRvZXNuJ3QuIApCZXN0IHJlZ2FyZHMgVGhv
bWFzCgo+Cj4gQWxzbywgc2luY2Ugd2UgYXJlIHVzaW5nIEJNQyBkaXNwbGF5LCB0aGUgZGlzcGxh
eSB3aWxsIGJlIGRpc2Nvbm5lY3RlZAo+IHdoZW4gQk1DIHJlc2V0LCBhdCB0aGlzIHRpbWUgd2Ug
bmVlZCB0byBwdXNoIHRoZSBkaXNwbGF5IGRhdGEgKGNydGMsCj4gY29ubmVjdG9yLCBldGMuKSBt
YW51YWxseSBhcyBzaG93biBpbiBQYXRjaC00Lgo+Cj4gUHJvYmFibHkgaXQncyBub3QgdGhlIG1v
c3Qgc3VpdGFibGUgd2F5IHRvIGltcGxlbWVudCBpdC4KPgo+PiBCZXN0IHJlZ2FyZHMKPj4gVGhv
bWFzCj4+Cj4+PiArICAgICB9LAo+Pj4gKyAgICAgLnByb2JlID0gbHMya2JtY19wcm9iZSwKPj4+
ICsgICAgIC5yZW1vdmUgPSBsczJrYm1jX3JlbW92ZSwKPj4+ICt9Owo+Pj4gKwo+Pj4gK21vZHVs
ZV9wbGF0Zm9ybV9kcml2ZXIobHMya2JtY19wbGF0Zm9ybV9kcml2ZXIpOwo+Pj4gKwo+Pj4gK01P
RFVMRV9ERVNDUklQVElPTigiRFJNIGRyaXZlciBmb3IgTG9vbmdzb24tMksgQk1DIik7Cj4+PiAr
TU9EVUxFX0xJQ0VOU0UoIkdQTCIpOwo+PiAtLQo+PiAtLQo+PiBUaG9tYXMgWmltbWVybWFubgo+
PiBHcmFwaGljcyBEcml2ZXIgRGV2ZWxvcGVyCj4+IFNVU0UgU29mdHdhcmUgU29sdXRpb25zIEdl
cm1hbnkgR21iSAo+PiBGcmFua2Vuc3RyYXNzZSAxNDYsIDkwNDYxIE51ZXJuYmVyZywgR2VybWFu
eQo+PiBHRjogSXZvIFRvdGV2LCBBbmRyZXcgTXllcnMsIEFuZHJldyBNY0RvbmFsZCwgQm91ZGll
biBNb2VybWFuCj4+IEhSQiAzNjgwOSAoQUcgTnVlcm5iZXJnKQo+Pgo+CgotLSAKLS0KVGhvbWFz
IFppbW1lcm1hbm4KR3JhcGhpY3MgRHJpdmVyIERldmVsb3BlcgpTVVNFIFNvZnR3YXJlIFNvbHV0
aW9ucyBHZXJtYW55IEdtYkgKRnJhbmtlbnN0cmFzc2UgMTQ2LCA5MDQ2MSBOdWVybmJlcmcsIEdl
cm1hbnkKR0Y6IEl2byBUb3RldiwgQW5kcmV3IE15ZXJzLCBBbmRyZXcgTWNEb25hbGQsIEJvdWRp
ZW4gTW9lcm1hbgpIUkIgMzY4MDkgKEFHIE51ZXJuYmVyZykKCgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KT3BlbmlwbWktZGV2ZWxvcGVyIG1haWxpbmcg
bGlzdApPcGVuaXBtaS1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlz
dHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL29wZW5pcG1pLWRldmVsb3Blcgo=
