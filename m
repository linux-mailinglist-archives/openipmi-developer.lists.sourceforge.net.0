Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gM+LC5IC52kX2wEAu9opvQ
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	for <lists+openipmi-developer@lfdr.de>; Tue, 21 Apr 2026 06:52:34 +0200
X-Original-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 55BF24364ED
	for <lists+openipmi-developer@lfdr.de>; Tue, 21 Apr 2026 06:52:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:To:From:Date:Sender:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=w06nplPnj4ZaAC1MEck6XGyRzVKnUX9JU3cxEATxnPA=; b=WQefOSGJoS/18aV2M46AKH2SNa
	E7I6jAlYLlRAfzZH7IajDZHsrThFo62RI9aIH6wa5Yod5p7XQpCoBgF3af7fSI5HXBVuL6Cy1ogO1
	TzXuR0vlS7ZND51BGHM8PKhIhWoG3XOs66Hn/l+8ypycBzYIg+nfUsEcNveUKZxBngs4=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1wF35y-0003KX-QV;
	Tue, 21 Apr 2026 04:52:23 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <error27@gmail.com>) id 1wF35x-0003KR-Rx
 for openipmi-developer@lists.sourceforge.net;
 Tue, 21 Apr 2026 04:52:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Subject:Cc:To:
 From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=B5r87axgijbpGiNp6Mg7ux3ckd8E7GgL0yrr2g24VEA=; b=NafpsI+HHwX/tu0F4Hutt8YhDX
 Q17R+/9hG7c6p9dVdHoneN18SlKuww7oXqDezDKp7PusWTToDNAwofR/oydJs/8IfxlMkcIkOhu8d
 7E+RMcK1gZ5kYx2hABidqp6CqizX9c4ZANQc4uisocUuPPhMQy7YqZyTgwswAZB3Wlng=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Subject:Cc:To:From:Date:Sender:
 Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=B5r87axgijbpGiNp6Mg7ux3ckd8E7GgL0yrr2g24VEA=; b=O
 qEiV2XJnVBvj/pbGRbaaJoLKFgzS5jurDyaZ0M0vGOqqQr2caUgKFCwM9q5vSAPEL9OHABXtnW3DX
 7kqRw2vwRbjZzDnsJ3aDO83MeofSTFc7qzCiP84KHzqwc6v9Z/t/mBU71fX88xaRImfA9MhRqMv9G
 Uxo1H80mv/iE3pxE=;
Received: from mail-wr1-f47.google.com ([209.85.221.47])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1wF35y-0003Vr-7K for openipmi-developer@lists.sourceforge.net;
 Tue, 21 Apr 2026 04:52:22 +0000
Received: by mail-wr1-f47.google.com with SMTP id
 ffacd0b85a97d-43d73352cf2so3182941f8f.1
 for <openipmi-developer@lists.sourceforge.net>;
 Mon, 20 Apr 2026 21:52:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20251104; t=1776747136; x=1777351936; darn=lists.sourceforge.net;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :from:to:cc:subject:date:message-id:reply-to;
 bh=B5r87axgijbpGiNp6Mg7ux3ckd8E7GgL0yrr2g24VEA=;
 b=hmBAyNpMlmtTLKTpuSxE/TkEOOzJLpFhBdCTOMd+PJp075AlsQHKmiCWyUFB4oxHPy
 p3Ylp+Dp4w2h7VdTIvbRBhsWCyw47GFIQaIW0aIko7X+c+MK3EOghDOfhUHgQPB1hlfE
 Wj06c1izCuxnKKzanXNiVQl72O6YgFKrYD2vD+JYF0TkiH8mcVtS+9AP3Sm4HZWTn15r
 qoY8f939ABAJy08/dCyieeiJy3KDIBf3wj/TuQdTEihFNS4DxvHXpyy6n89ScMvSMEgS
 Cx4EuOQIFnuiXYIpfMagV1QibIen4mWzxpbbuzGRJjTBDOE7byBzoLaeUvfNI3VCKJsD
 /fXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1776747136; x=1777351936;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=B5r87axgijbpGiNp6Mg7ux3ckd8E7GgL0yrr2g24VEA=;
 b=HM5nVL0077Sr4tGZPwNPz+ku5nvWZfCXAGQvz5VJGJwXRRLtXa9PgJ44/MKbGoiq/M
 UtkzPmzc86n5j07XbrTFVv9CH9B4SyXrxh0bBOx8vI2Nq/dl7Nx3/B4G+NyikeY1zObz
 kQudaKnY92GtErXEOyoECgKSOy2VWBZqJbA7zi9Erw4806SuDkYtQuZLUjtyrtbZ74Wy
 41ej/FFaQOILfEJvGYKlHWY//fYL7e5dIO57hY5DwVcJh/e/6G0oNDzDiJa1t1hFv0g4
 w5nhH5Nkkmmx0sqDHQlMXu2IdSveH8O7XESC0AbPRkkIcl/eFUrVY6zbe7Z7rZFh/io1
 +Ikw==
X-Gm-Message-State: AOJu0Yy4owKglwO7B+ER3RphhS140lf5Mnzp1Hl+AnSm5yOzMihWZ2mM
 XcTKyQLTC3gNVa/D8mym9Ow/K2WY1q8Vmy0WGCJ4dCOvD2F/wVUZiwi3rSYHNpEE
X-Gm-Gg: AeBDieuf3VfPmpXxPSLaCsC9sMMzodAIfXcobpIucWCJzCERqoHiY1olyzVODbxfq2Y
 z2IDtdVYhQpjb/cnNSCHx1yi+NC2eODswTeaC9nWQeHU3uzn+XyVZ7uhvNx8iCs4jly+0KqPzj1
 6I0NLPRBOiqipqUaxLZlcf+j/YBUP0RHf/ERR/tTj+DHfXeV+DOw5/a7JN4lZXI+heMDmvMCA/L
 ocFAsePIFKus/TxAv6YdaeLcy1TMiRUHIX+nk3cQneqzTTzL7IHD+rxPgiOlYT3b0sIKQm0xQdE
 NTCEmcp091bUZxiQrRPKNA4q2+cBEUX0e0ydWbnWexORx/nsYzDL3iAtANlYi4jgIoq3CKqjm/M
 UazdSJxJ5BLq5yilyEesCuf7kM2P4gi0CVwSwwLZrdaDdSy/RpWWwpL1XwFFb+lv9qt/ic13nIP
 XDi4eX6GWN259Zgl+G/e6XAFZLEmwjUw==
X-Received: by 2002:a05:6000:22c5:b0:43c:ef4f:79dc with SMTP id
 ffacd0b85a97d-43fe3db9b0emr24822729f8f.8.1776747135390; 
 Mon, 20 Apr 2026 21:52:15 -0700 (PDT)
Received: from localhost ([196.207.164.177]) by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-43fe4cb1365sm35895971f8f.7.2026.04.20.21.52.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 20 Apr 2026 21:52:14 -0700 (PDT)
Date: Tue, 21 Apr 2026 07:52:11 +0300
From: Dan Carpenter <error27@gmail.com>
To: Corey Minyard <corey@minyard.net>
Message-ID: <aecCe6Dwm7jBVYDq@stanley.mountain>
MIME-Version: 1.0
Content-Disposition: inline
X-Spam-Score: 1.1 (+)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello Corey Minyard, Commit 75c486cb1bca ("ipmi:ssif: Clean
 up kthread on errors") from Apr 13, 2026 (linux-next), leads to the following
 Smatch static checker warning: drivers/char/ipmi/ipmi_ssif.c:1923 ssif_probe()
 error: 'ssif_info->thread' dereferencing possible ERR_PTR() 
 Content analysis details:   (1.1 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 [error27(at)gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends in
 digit [error27(at)gmail.com]
 1.0 RCVD_IN_UCE2           RBL: IP Subnet Listed in UCEPROTECT Level 2
 [196.207.164.177 listed in dnsbl-2.uceprotect.net]
 0.0 RCVD_IN_DNSWL_BLOCKED  RBL: ADMINISTRATOR NOTICE: The query to DNSWL
 was blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#DnsBlocklists-dnsbl-block
 for more information. [209.85.221.47 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.47 listed in wl.mailspike.net]
X-Headers-End: 1wF35y-0003Vr-7K
Subject: [Openipmi-developer] [bug report] ipmi:ssif: Clean up kthread on
 errors
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
Cc: openipmi-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net
X-Spamd-Result: default: False [-1.01 / 15.00];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[216.105.38.7:from];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:corey@minyard.net,m:openipmi-developer@lists.sourceforge.net,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[error27@gmail.com,openipmi-developer-bounces@lists.sourceforge.net];
	ARC_NA(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,gmail.com:s=20251104];
	TO_DN_SOME(0.00)[];
	FORWARDED(0.00)[openipmi-developer@lists.sourceforge.net];
	MIME_TRACE(0.00)[0:+];
	DKIM_MIXED(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PREVIOUSLY_DELIVERED(0.00)[openipmi-developer@lists.sourceforge.net];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[error27@gmail.com,openipmi-developer-bounces@lists.sourceforge.net];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,gmail.com:-];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[openipmi-developer];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[stanley.mountain:mid]
X-Rspamd-Queue-Id: 55BF24364ED
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hello Corey Minyard,

Commit 75c486cb1bca ("ipmi:ssif: Clean up kthread on errors") from
Apr 13, 2026 (linux-next), leads to the following Smatch static
checker warning:

	drivers/char/ipmi/ipmi_ssif.c:1923 ssif_probe()
	error: 'ssif_info->thread' dereferencing possible ERR_PTR()

drivers/char/ipmi/ipmi_ssif.c
    1874         ssif_info->handlers.owner = THIS_MODULE;
    1875         ssif_info->handlers.start_processing = ssif_start_processing;
    1876         ssif_info->handlers.shutdown = shutdown_ssif;
    1877         ssif_info->handlers.get_smi_info = get_smi_info;
    1878         ssif_info->handlers.sender = sender;
    1879         ssif_info->handlers.request_events = request_events;
    1880         ssif_info->handlers.set_need_watch = ssif_set_need_watch;
    1881 
    1882         thread_num = ((i2c_adapter_id(ssif_info->client->adapter) << 8) |
    1883                       ssif_info->client->addr);
    1884         init_completion(&ssif_info->wake_thread);
    1885         ssif_info->thread = kthread_run(ipmi_ssif_thread, ssif_info,
    1886                                         "kssif%4.4x", thread_num);
    1887         if (IS_ERR(ssif_info->thread)) {
                            ^^^^^^^^^^^^^^^^^

    1888                 rv = PTR_ERR(ssif_info->thread);
    1889                 dev_notice(&ssif_info->client->dev,
    1890                            "Could not start kernel thread: error %d\n",
    1891                            rv);
    1892                 goto out;
    1893         }
    1894 
    1895         dev_set_drvdata(&ssif_info->client->dev, ssif_info);
    1896         rv = device_add_group(&ssif_info->client->dev,
    1897                               &ipmi_ssif_dev_attr_group);
    1898         if (rv) {
    1899                 dev_err(&ssif_info->client->dev,
    1900                         "Unable to add device attributes: error %d\n",
    1901                         rv);
    1902                 goto out;
    1903         }
    1904 
    1905         rv = ipmi_register_smi(&ssif_info->handlers,
    1906                                ssif_info,
    1907                                &ssif_info->client->dev,
    1908                                slave_addr);
    1909         if (rv) {
    1910                 dev_err(&ssif_info->client->dev,
    1911                         "Unable to register device: error %d\n", rv);
    1912                 goto out_remove_attr;
    1913         }
    1914 
    1915  out:
    1916         if (rv) {
    1917                 /*
    1918                  * If ipmi_register_smi() starts the interface, it will
    1919                  * call shutdown and that will free the thread and set
    1920                  * it to NULL.  Otherwise it must be freed here.
    1921                  */
    1922                 if (ssif_info->thread) {

if (!IS_ERR_OR_NULL(ssif_info->thread))

--> 1923                         kthread_stop(ssif_info->thread);
    1924                         ssif_info->thread = NULL;
    1925                 }
    1926                 if (addr_info)
    1927                         addr_info->client = NULL;
    1928 
    1929                 dev_err(&ssif_info->client->dev,
    1930                         "Unable to start IPMI SSIF: %d\n", rv);
    1931                 i2c_set_clientdata(client, NULL);
    1932                 kfree(ssif_info);
    1933         }
    1934         kfree(resp);
    1935         mutex_unlock(&ssif_infos_mutex);
    1936         return rv;
    1937 
    1938 out_remove_attr:
    1939         device_remove_group(&ssif_info->client->dev, &ipmi_ssif_dev_attr_group);
    1940         dev_set_drvdata(&ssif_info->client->dev, NULL);
    1941         goto out;
    1942 }

This email is a free service from the Smatch-CI project [smatch.sf.net].

regards,
dan carpenter


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
